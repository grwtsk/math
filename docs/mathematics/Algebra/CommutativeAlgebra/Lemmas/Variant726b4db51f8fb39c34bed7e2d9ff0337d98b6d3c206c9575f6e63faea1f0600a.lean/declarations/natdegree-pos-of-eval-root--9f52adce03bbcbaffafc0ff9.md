# natDegree_pos_of_eval₂_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4157b2e6-3075-5a40-f4bd-2cdc32b363ea",
  "kind": "theorem",
  "lexical_name": "natDegree_pos_of_eval₂_root",
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
  "slug": "natdegree-pos-of-eval-root--9f52adce03bbcbaffafc0ff9",
  "source": {
    "blob": "e304c5a15b4b55782d29a4ffa84c5696ab580935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 280,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f52adce03bbcbaffafc0ff9b6f795683c3c83c195526c34872f796cd9c4567c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4157b2e6-3075-5a40-f4bd-2cdc32b363ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_pos_of_eval₂_root {p : R[X]} (hp : p ≠ 0) (f : R →+* S) {z : S}
    (hz : eval₂ f z p = 0) (inj : ∀ x : R, f x = 0 → x = 0) : 0 < natDegree p :=
  lt_of_not_ge fun hlt => by
    have A : p = C (p.coeff 0) := eq_C_of_natDegree_le_zero hlt
    rw [A, eval₂_C] at hz
    simp only [inj (p.coeff 0) hz, RingHom.map_zero] at A
    exact hp A
#align polynomial.nat_degree_pos_of_eval₂_root Polynomial.natDegree_pos_of_eval₂_root

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant726b4db51f8fb39c34bed7e2d9ff0337d98b6d3c206c9575f6e63faea1f0600a.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e304c5a15b4b55782d29a4ffa84c5696ab580935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
