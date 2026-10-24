# IsSRGWith.compl_is_regular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f72242c-eee5-3e29-35e7-04ac83a69740",
  "kind": "theorem",
  "lexical_name": "IsSRGWith.compl_is_regular",
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
  "slug": "issrgwith-compl-is-regular--f045eb5719aeeb03422a5b0d",
  "source": {
    "blob": "c0c16c2dd9c973bd9bdf30d4cd3ba58562110603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f045eb5719aeeb03422a5b0d57bb883b574481b49a08a7136e21fa5f8dde7169",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f72242c-eee5-3e29-35e7-04ac83a69740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSRGWith.compl_is_regular (h : G.IsSRGWith n k ℓ μ) :
    Gᶜ.IsRegularOfDegree (n - k - 1) := by
  rw [← h.card, Nat.sub_sub, add_comm, ← Nat.sub_sub]
  exact h.regular.compl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/StronglyRegular/Variantc91c293b8f2c88e8e842192cdc0dd9c38977e1a9ce0223509ba65a87a71a7364.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c16c2dd9c973bd9bdf30d4cd3ba58562110603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
