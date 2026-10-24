# RemainingPremises

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b7bec76b33148492d70d89db403224b9ae68c5b71fcd8cd018cff877465316f",
  "kind": "def",
  "lexical_name": "RemainingPremises",
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
  "slug": "remainingpremises--eeadbed28fc0f7fa36112a62",
  "source": {
    "blob": "fbd886ebda039ad80b423a27d8c611ffce5c5913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2a6523ad8cdf7c2a4db92fa00af4e7c33e1b91af91615405d2fd82a5221fd36f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eeadbed28fc0f7fa36112a623e90d337c544d023565b8eb1c7ead75bcb523aa6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2a6523ad8cdf7c2a4db92fa00af4e7c33e1b91af91615405d2fd82a5221fd36f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b7bec76b33148492d70d89db403224b9ae68c5b71fcd8cd018cff877465316f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RemainingPremises {language : JudgmentLanguage} {count : ℕ}
    (proposal : ConditionalProposal language count) (completed : Finset (Fin count)) : Prop :=
  ∀ index, index ∉ completed → (proposal.assumptions index).Holds

/-- Assemble all positions from discharges and the explicit complement; none can be dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2a6523ad8cdf7c2a4db92fa00af4e7c33e1b91af91615405d2fd82a5221fd36f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variant2a6523ad8cdf7c2a4db92fa00af4e7c33e1b91af91615405d2fd82a5221fd36f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd886ebda039ad80b423a27d8c611ffce5c5913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
