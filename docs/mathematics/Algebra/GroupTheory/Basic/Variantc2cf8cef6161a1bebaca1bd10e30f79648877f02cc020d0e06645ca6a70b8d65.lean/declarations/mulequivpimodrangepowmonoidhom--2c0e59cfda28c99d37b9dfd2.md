# mulEquivPiModRangePowMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:705d9d4452f2ec222cd7811164de2aa5e9817ee038552ec1043c50c09f36aa67",
  "kind": "def",
  "lexical_name": "mulEquivPiModRangePowMonoidHom",
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
  "slug": "mulequivpimodrangepowmonoidhom--2c0e59cfda28c99d37b9dfd2",
  "source": {
    "blob": "c7e1af7afdcadd95024dd4f4866381743e3f50ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 491,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c0e59cfda28c99d37b9dfd239580c4aea119a45a6f7f237af7c3742917f8e15",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:705d9d4452f2ec222cd7811164de2aa5e9817ee038552ec1043c50c09f36aa67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mulEquivPiModRangePowMonoidHom :
    ((i : ι) → A i) ⧸ (powMonoidHom n).range ≃* ((i : ι) → A i ⧸ (powMonoidHom n).range) :=
  let φ : ((i : ι) → A i) →* (i : ι) → A i ⧸ (powMonoidHom n).range := {
    toFun x := (x ·)
    map_one' := by simp [Pi.one_def]
    map_mul' x y := by simp [Pi.mul_def]
  }
  liftEquiv (φ := φ) _ (fun y ↦ ⟨fun i ↦ Quotient.out (y i), by simp [φ]⟩) <| by
    ext x : 1
    simpa [φ, funext_iff] using (Classical.skolem (p := fun i a ↦ a ^ n = x i)).symm

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantc2cf8cef6161a1bebaca1bd10e30f79648877f02cc020d0e06645ca6a70b8d65.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7e1af7afdcadd95024dd4f4866381743e3f50ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
