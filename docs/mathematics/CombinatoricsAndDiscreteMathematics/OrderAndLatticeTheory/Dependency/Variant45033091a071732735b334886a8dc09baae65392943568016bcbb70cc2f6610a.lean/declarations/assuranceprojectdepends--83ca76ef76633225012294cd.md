# AssuranceProjectDepends

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d66bfdcb4b2906b9cef91915b6d99b6d58b00173444a163f48a845ada0928c32",
  "kind": "inductive",
  "lexical_name": "AssuranceProjectDepends",
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
  "slug": "assuranceprojectdepends--83ca76ef76633225012294cd",
  "source": {
    "blob": "3fdfaeb044df80ca2f1c16438ed3c2fa40e5b7d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83ca76ef76633225012294cd962ed1523e9e5811975688bebc8fc790d7e1acf3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d66bfdcb4b2906b9cef91915b6d99b6d58b00173444a163f48a845ada0928c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive AssuranceProjectDepends :
    AssuranceProjectComponent → AssuranceProjectComponent → Prop
  | rustLean : AssuranceProjectDepends .rustAudit .leanFormalization
  | rustAgda : AssuranceProjectDepends .rustAudit .agdaFormalization
  | adapterRust : AssuranceProjectDepends .providerAdapter .rustAudit
  | adapterRuntime : AssuranceProjectDepends .providerAdapter .externalRuntime
  | submissionRust : AssuranceProjectDepends .generatedSubmission .rustAudit

/-- The declared canonical project graph is ranked and acyclic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Dependency/Variant45033091a071732735b334886a8dc09baae65392943568016bcbb70cc2f6610a.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fdfaeb044df80ca2f1c16438ed3c2fa40e5b7d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
