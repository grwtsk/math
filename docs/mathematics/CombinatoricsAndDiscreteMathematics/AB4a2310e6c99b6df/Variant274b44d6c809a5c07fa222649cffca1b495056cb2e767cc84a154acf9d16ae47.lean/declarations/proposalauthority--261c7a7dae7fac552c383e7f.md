# ProposalAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d14d2306d7ccfc9986a3d46e180862f16c297919957d02b5e0c8bf2eb73b10f2",
  "kind": "inductive",
  "lexical_name": "ProposalAuthority",
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
  "slug": "proposalauthority--261c7a7dae7fac552c383e7f",
  "source": {
    "blob": "41798277a67c0a77b4e925b5cb4a5a6b1cd6bb28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variant274b44d6c809a5c07fa222649cffca1b495056cb2e767cc84a154acf9d16ae47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:261c7a7dae7fac552c383e7f9f0a82e7f3896ebcd739fb4afb3171099e6f7aec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variant274b44d6c809a5c07fa222649cffca1b495056cb2e767cc84a154acf9d16ae47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d14d2306d7ccfc9986a3d46e180862f16c297919957d02b5e0c8bf2eb73b10f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ProposalAuthority
  | languageModel
  | oracleCandidate
  | modelOracleAgreement
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- There is no coercion from a proposal authority to an admitted fact authority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variant274b44d6c809a5c07fa222649cffca1b495056cb2e767cc84a154acf9d16ae47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AB4a2310e6c99b6df/Variant274b44d6c809a5c07fa222649cffca1b495056cb2e767cc84a154acf9d16ae47.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41798277a67c0a77b4e925b5cb4a5a6b1cd6bb28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
