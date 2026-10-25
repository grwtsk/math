# typeOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea3aaa58c0116b1d83bcbe03dab7d52fea82d60fcf2fab2e802c27cb8d642049",
  "kind": "def",
  "lexical_name": "typeOf",
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
  "slug": "typeof--4b77dba37ad7765b867dead7",
  "source": {
    "blob": "79d58d84141ef94aad7e3f2de85a421842ba0f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b77dba37ad7765b867dead761ba3ca40225e08f33c5d015e8f659e93a1ffc50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea3aaa58c0116b1d83bcbe03dab7d52fea82d60fcf2fab2e802c27cb8d642049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def typeOf (v : α → M) : T.CompleteType α :=
  haveI : (constantsOn α).Structure M := constantsOn.structure v
  { toTheory := L[[α]].completeTheory M
    subset' := model_iff_subset_completeTheory.1 ((LHom.onTheory_model _ T).2 inferInstance)
    isMaximal' := completeTheory.isMaximal _ _ }

namespace CompleteType

variable {T} {v : α → M}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variantea5b5bc5d305e71edb64080ae1cedae9077962125d001503507aecac81d5d7c8.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d58d84141ef94aad7e3f2de85a421842ba0f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
