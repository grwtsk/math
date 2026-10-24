# CompositionRuleApplies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0445d63644c0042e91ca0e2e3fd5df302877b209cc10351e30a9b9100b3df6d7",
  "kind": "def",
  "lexical_name": "CompositionRuleApplies",
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
  "slug": "compositionruleapplies--9cb14a2ef3aae310ee29eb9f",
  "source": {
    "blob": "62fc68a2f6a932623929079ffd9918a892ec8240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant750c12a5e1f2e771cb6abba1fa7f8fc47e8b0a509de3dec47825f999f3a957f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cb14a2ef3aae310ee29eb9f1500282b747d3b0795776fb74144ee0dfd0ccb16",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant750c12a5e1f2e771cb6abba1fa7f8fc47e8b0a509de3dec47825f999f3a957f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0445d63644c0042e91ca0e2e3fd5df302877b209cc10351e30a9b9100b3df6d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompositionRuleApplies
    (cut : EvidenceCut)
    (rule : CompositionRule)
    (_phrase : PhraseCandidate cut)
    (inputAssertions : Finset AssertionId) : Prop :=
  rule.snapshot = cut.activeSnapshot ∧
  ∀ assertion ∈ inputAssertions,
    cut.isAcceptedAssertion assertion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant750c12a5e1f2e771cb6abba1fa7f8fc47e8b0a509de3dec47825f999f3a957f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant750c12a5e1f2e771cb6abba1fa7f8fc47e8b0a509de3dec47825f999f3a957f1.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62fc68a2f6a932623929079ffd9918a892ec8240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
