# universalMulHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b39ff12ec5d9f02d22d1e78fd894b1aef9eeb6d55eb3601b1e6f2a3c56e3449",
  "kind": "def",
  "lexical_name": "universalMulHom",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "universalmulhom--f1e3405c7488e0cff1e618b7",
  "source": {
    "blob": "78cee56c17c6fec54af0c6b06992ae39ae350b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 386,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1e3405c7488e0cff1e618b7ab28d95f34337409a489cc5fd5d6f5ac44bab137",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b39ff12ec5d9f02d22d1e78fd894b1aef9eeb6d55eb3601b1e6f2a3c56e3449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def universalMulHom : R[S⁻¹] →* T
    where
  -- Porting note: `simp only []` required for beta reductions
  toFun x :=
    x.liftExpand (fun r s => f r * ((fS s)⁻¹ : Units T)) fun r t s ht => by
      simp only []
      have : (fS ⟨s * t, ht⟩ : T) = fS s * f t := by
        simp only [← hf, MonoidHom.map_mul]
      conv_rhs =>
        rw [MonoidHom.map_mul, ← mul_one (f r), ← Units.val_one, ← mul_left_inv (fS s)]
        rw [Units.val_mul, ← mul_assoc, mul_assoc _ (fS s : T), ← this, mul_assoc]
      simp only [mul_one, Units.mul_inv]
  map_one' := by simp only []; rw [OreLocalization.one_def, liftExpand_of]; simp
  map_mul' x y := by
    simp only []
    induction' x using OreLocalization.ind with r₁ s₁
    induction' y using OreLocalization.ind with r₂ s₂
    rcases oreDivMulChar' r₁ r₂ s₁ s₂ with ⟨ra, sa, ha, ha'⟩; rw [ha']; clear ha'
    rw [liftExpand_of, liftExpand_of, liftExpand_of]
    conv_rhs =>
      congr
      · skip
      congr
      rw [← mul_one (f r₂), ← (fS sa).mul_inv, ← mul_assoc, ← hf, ← f.map_mul, ha, f.map_mul]
    rw [mul_assoc, mul_assoc, mul_assoc, ← mul_assoc _ (f s₁), hf s₁, (fS s₁).inv_mul, one_mul,
      f.map_mul, mul_assoc, fS.map_mul, ← Units.val_mul]
    rfl
#align ore_localization.universal_mul_hom OreLocalization.universalMulHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cee56c17c6fec54af0c6b06992ae39ae350b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
