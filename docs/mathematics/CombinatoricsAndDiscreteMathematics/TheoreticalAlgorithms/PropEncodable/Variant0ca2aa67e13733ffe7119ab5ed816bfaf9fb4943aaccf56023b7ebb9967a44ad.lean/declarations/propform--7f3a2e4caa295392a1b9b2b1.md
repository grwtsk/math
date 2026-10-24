# PropForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7930235a681a09381d376e667e5d27bd9e860a41c9ff13952f5c826e4babaee5",
  "kind": "inductive",
  "lexical_name": "PropForm",
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
  "slug": "propform--7f3a2e4caa295392a1b9b2b1",
  "source": {
    "blob": "ae59de9d92bfeaa81c8ff5bf97368f6e62f1b7d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PropEncodable/Variant0ca2aa67e13733ffe7119ab5ed816bfaf9fb4943aaccf56023b7ebb9967a44ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f3a2e4caa295392a1b9b2b191c55f8e33ba16b507ca388a2ff34ed55a2e5660",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PropEncodable/Variant0ca2aa67e13733ffe7119ab5ed816bfaf9fb4943aaccf56023b7ebb9967a44ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7930235a681a09381d376e667e5d27bd9e860a41c9ff13952f5c826e4babaee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PropForm (α : Type _)
  | var : α → PropForm α
  | not : PropForm α → PropForm α
  | and : PropForm α → PropForm α → PropForm α
  | or : PropForm α → PropForm α → PropForm α
#align prop_encodable.prop_form PropEncodable.PropForm

/-!
The next three functions make it easier to construct functions from a small
`Fin`.
-/

-- porting note: using `![_, _]` notation instead
#noalign prop_encodable.mk_fn0
#noalign prop_encodable.mk_fn1
#noalign prop_encodable.mk_fn2

namespace PropForm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PropEncodable/Variant0ca2aa67e13733ffe7119ab5ed816bfaf9fb4943aaccf56023b7ebb9967a44ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PropEncodable/Variant0ca2aa67e13733ffe7119ab5ed816bfaf9fb4943aaccf56023b7ebb9967a44ad.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae59de9d92bfeaa81c8ff5bf97368f6e62f1b7d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
