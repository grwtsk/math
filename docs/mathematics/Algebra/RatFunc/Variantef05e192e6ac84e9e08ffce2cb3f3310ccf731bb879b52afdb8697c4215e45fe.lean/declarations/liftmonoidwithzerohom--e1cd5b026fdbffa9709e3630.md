# liftMonoidWithZeroHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03f86b4109aeff3347eaea8de617c1138844790dd623ab4641db20c06ddeb2b6",
  "kind": "def",
  "lexical_name": "liftMonoidWithZeroHom",
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
  "slug": "liftmonoidwithzerohom--e1cd5b026fdbffa9709e3630",
  "source": {
    "blob": "eb19639a164d3ad5e76246d2aadb9f2d9aa4a653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 701,
    "path": "GRWTSK/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1cd5b026fdbffa9709e36305c025ab00cada1c7c2410bed28c484218246fa1c",
  "verification": {
    "reference": "docs/verification/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03f86b4109aeff3347eaea8de617c1138844790dd623ab4641db20c06ddeb2b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftMonoidWithZeroHom (φ : R[X] →*₀ G₀) (hφ : R[X]⁰ ≤ G₀⁰.comap φ) : RatFunc R →*₀ G₀ where
  toFun f :=
    RatFunc.liftOn f (fun p q => φ p / φ q) fun {p q p' q'} hq hq' h => by
      cases subsingleton_or_nontrivial R
      · rw [Subsingleton.elim p q, Subsingleton.elim p' q, Subsingleton.elim q' q]
      rw [div_eq_div_iff, ← map_mul, mul_comm p, h, map_mul, mul_comm] <;>
        exact nonZeroDivisors.ne_zero (hφ ‹_›)
  map_one' := by
    dsimp only -- porting note: force the function to be applied
    rw [← ofFractionRing_one, ← Localization.mk_one, liftOn_ofFractionRing_mk]
    simp only [map_one, Submonoid.coe_one, div_one]
  map_mul' x y := by
    cases' x with x
    cases' y with y
    induction' x using Localization.rec with p q
    induction' y using Localization.rec with p' q'
    · rw [← ofFractionRing_mul, Localization.mk_mul]
      simp only [liftOn_ofFractionRing_mk, div_mul_div_comm, map_mul, Submonoid.coe_mul]
    · rfl
    · rfl
  map_zero' := by
    dsimp only -- porting note: force the function to be applied
    rw [← ofFractionRing_zero, ← Localization.mk_zero (1 : R[X]⁰), liftOn_ofFractionRing_mk]
    simp only [map_zero, zero_div]
#align ratfunc.lift_monoid_with_zero_hom RatFunc.liftMonoidWithZeroHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatFunc/Variantef05e192e6ac84e9e08ffce2cb3f3310ccf731bb879b52afdb8697c4215e45fe.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb19639a164d3ad5e76246d2aadb9f2d9aa4a653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
