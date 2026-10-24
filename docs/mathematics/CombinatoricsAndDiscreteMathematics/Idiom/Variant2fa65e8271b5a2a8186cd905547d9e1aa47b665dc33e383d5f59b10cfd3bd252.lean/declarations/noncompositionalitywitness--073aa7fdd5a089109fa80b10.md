# NoncompositionalityWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:287bf83c40beaaad1e5be696947d69c68b07ef81602e325968bf5737bd156a12",
  "kind": "structure",
  "lexical_name": "NoncompositionalityWitness",
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
  "slug": "noncompositionalitywitness--073aa7fdd5a089109fa80b10",
  "source": {
    "blob": "95eca3960ca6125bab36d96de915b8cc2698b60b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Idiom/Variant2fa65e8271b5a2a8186cd905547d9e1aa47b665dc33e383d5f59b10cfd3bd252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:073aa7fdd5a089109fa80b1086bdb8b35a7c0ae7da0faf6dcf7c03926b330ea9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Idiom/Variant2fa65e8271b5a2a8186cd905547d9e1aa47b665dc33e383d5f59b10cfd3bd252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:287bf83c40beaaad1e5be696947d69c68b07ef81602e325968bf5737bd156a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NoncompositionalityWitness
    {cut : EvidenceCut}
    {phrase : PhraseCandidate cut}
    (literal : LiteralReading cut phrase)
    (contextual : ContextualReading cut phrase) where
  differences : Finset ProtectedDifference
  differences_nonempty : differences.Nonempty
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Idiom/Variant2fa65e8271b5a2a8186cd905547d9e1aa47b665dc33e383d5f59b10cfd3bd252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Idiom/Variant2fa65e8271b5a2a8186cd905547d9e1aa47b665dc33e383d5f59b10cfd3bd252.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95eca3960ca6125bab36d96de915b8cc2698b60b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
