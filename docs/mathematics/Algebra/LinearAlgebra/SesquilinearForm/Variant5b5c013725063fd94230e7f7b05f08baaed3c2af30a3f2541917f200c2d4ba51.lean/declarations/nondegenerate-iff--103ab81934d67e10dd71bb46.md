# nondegenerate_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6d9adbe-6215-c319-51a2-df1026a7958c",
  "kind": "lemma",
  "lexical_name": "nondegenerate_iff'",
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
  "slug": "nondegenerate-iff--103ab81934d67e10dd71bb46",
  "source": {
    "blob": "f375bbc35d14c25e01650cd8ddfab95f811d94b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 958,
    "line": 953,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:103ab81934d67e10dd71bb46b0c62a57895adad64239bbbf7bcdad0b54abf787",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6d9adbe-6215-c319-51a2-df1026a7958c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–958.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nondegenerate_iff' (hs : ∀ x, 0 ≤ B x x) (hB : B.IsSymm) :
    B.Nondegenerate ↔ ∀ x, x ≠ 0 → 0 < B x x := by
  rw [B.nondegenerate_iff hs hB, ← not_iff_not]
  push_neg
  exact exists_congr fun x ↦ ⟨by aesop, fun ⟨h₀, h⟩ ↦ Or.inl ⟨le_antisymm h (hs x), h₀⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f375bbc35d14c25e01650cd8ddfab95f811d94b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
