# WitnessesResolveAs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5442c47d1b5fc623e09e0922b7c83979c500a437614e9e3848d6f726fc68219b",
  "kind": "def",
  "lexical_name": "WitnessesResolveAs",
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
  "slug": "witnessesresolveas--ee900fafc83deb348ac26dad",
  "source": {
    "blob": "597c302405152f5b3ec732a24148a44184d3536d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant45c6c588eef93af83b28477fb2a554fd6b66e4db35ea7393c2b50b0ad3b2004e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee900fafc83deb348ac26dad311fcba102be8ded1d2be14a81cc81f1e84f0a15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant45c6c588eef93af83b28477fb2a554fd6b66e4db35ea7393c2b50b0ad3b2004e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5442c47d1b5fc623e09e0922b7c83979c500a437614e9e3848d6f726fc68219b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WitnessesResolveAs
    (registry : Registry) (witnesses : Finset StableId)
    (kind : EvidenceKind) : Prop :=
  ∀ witnessId ∈ witnesses,
    ∃ evidence ∈ registry.witnessEvidence,
      evidence.id = witnessId ∧
      evidence.kind = kind ∧
      evidence.id.Valid ∧
      evidence.subject.Valid ∧
      evidence.digest.Valid ∧
      evidence.provenance.Nonempty

end Registry

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant45c6c588eef93af83b28477fb2a554fd6b66e4db35ea7393c2b50b0ad3b2004e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant45c6c588eef93af83b28477fb2a554fd6b66e4db35ea7393c2b50b0ad3b2004e.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `597c302405152f5b3ec732a24148a44184d3536d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
