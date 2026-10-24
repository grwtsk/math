# IdiomCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5470f838f291e0a5ea40e8164bafa3bee0f1e2f27e44c87f9f270b653eb5bf10",
  "kind": "structure",
  "lexical_name": "IdiomCertificate",
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
  "slug": "idiomcertificate--74303893459efbcf260f1480",
  "source": {
    "blob": "f2a7417a16a3b77a00e6f6874256f5a68d90e1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Idiom/Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74303893459efbcf260f1480b31516aff24f6f6c6e72ac09f54a1abac83306fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Idiom/Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5470f838f291e0a5ea40e8164bafa3bee0f1e2f27e44c87f9f270b653eb5bf10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IdiomCertificate
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  contextual : ContextualReading cut phrase
  literal : LiteralReading cut phrase
  noncompositionality :
    NoncompositionalityWitness literal contextual
  coreConcept : ConceptId
  restrictions : IdiomRestrictions
  variants : Finset IdiomVariant
  conventionalityEvidence : Finset EvidenceId
  conventionalityEvidence_nonempty :
    conventionalityEvidence.Nonempty
  distinguishedFromMetaphor : Prop
  distinguishedFromCollocation : Prop

end Mathematics.SemanticTokenization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Idiom/Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Idiom/Variant1523f07466b64fabb73bcfb5cf061c64782b4740d0245186af46e495646fba71.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2a7417a16a3b77a00e6f6874256f5a68d90e1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
