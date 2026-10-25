# full_off_residue_normalized_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d87735-db5c-916d-97a9-a27b6c1a51a0",
  "kind": "theorem",
  "lexical_name": "full_off_residue_normalized_identity",
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
  "slug": "full-off-residue-normalized-identity--9fa5e64635c5ea9fee00e116",
  "source": {
    "blob": "5144ac9cc4c471034340ab79a19d439022b08043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fa5e64635c5ea9fee00e1169a9986ed85f183946fb70f3eaf7b4d91ff364f0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d87735-db5c-916d-97a9-a27b6c1a51a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_off_residue_normalized_identity {K : Type*} [Field K]
    (Q D V W R : K) (hQ : Q ≠ 0) (hD : 1 - D ≠ 0) (hV : 1 - V ≠ 0)
    (hW : 1 - W ≠ 0) (hR : 1 - R ≠ 0) :
    normalized Q D V W R - 1 =
      (R * (1 - Q⁻¹ * (1 - W) - W ^ 2 * (1 - V) - D) +
        D * (V + W - Q * W * V + (Q - 1) * W ^ 2 * V) - W * V) /
        ((1 - R) * (1 - D)) := by
  unfold normalized principal principalStar
  field_simp [hQ, hD, hV, hW, hR]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/PrincipalRectangleAlgebra/Variant708493f5429592bece49e7205cc4f097ee891b79d53b5c83091351df3bd6948b.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5144ac9cc4c471034340ab79a19d439022b08043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
