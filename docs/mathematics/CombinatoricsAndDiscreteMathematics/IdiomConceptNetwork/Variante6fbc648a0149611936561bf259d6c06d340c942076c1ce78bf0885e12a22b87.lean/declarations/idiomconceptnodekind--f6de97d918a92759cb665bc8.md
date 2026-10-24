# IdiomConceptNodeKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0aa80b64fa0627bb615a2a99e3f5dea4eee1d7d97c54fe83de11c6a72042e9c",
  "kind": "inductive",
  "lexical_name": "IdiomConceptNodeKind",
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
  "slug": "idiomconceptnodekind--f6de97d918a92759cb665bc8",
  "source": {
    "blob": "35c0bd1e8a2263a1962c85cdfb869cdd7c90384c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 11,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variante6fbc648a0149611936561bf259d6c06d340c942076c1ce78bf0885e12a22b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6de97d918a92759cb665bc8e51540f164d861454861471069cf963f540c02a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variante6fbc648a0149611936561bf259d6c06d340c942076c1ce78bf0885e12a22b87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0aa80b64fa0627bb615a2a99e3f5dea4eee1d7d97c54fe83de11c6a72042e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IdiomConceptNodeKind
  | token
  | phrase
  | idiom
  | metaphor
  | concept
deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variante6fbc648a0149611936561bf259d6c06d340c942076c1ce78bf0885e12a22b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IdiomConceptNetwork/Variante6fbc648a0149611936561bf259d6c06d340c942076c1ce78bf0885e12a22b87.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c0bd1e8a2263a1962c85cdfb869cdd7c90384c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
