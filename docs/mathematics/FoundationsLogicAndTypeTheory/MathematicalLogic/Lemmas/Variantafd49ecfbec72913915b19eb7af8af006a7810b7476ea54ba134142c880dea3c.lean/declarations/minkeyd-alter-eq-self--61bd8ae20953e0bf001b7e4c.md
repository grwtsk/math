# minKeyD_alter_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5731886-82b6-5d74-5feb-dad8bb773877",
  "kind": "theorem",
  "lexical_name": "minKeyD_alter_eq_self",
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
  "slug": "minkeyd-alter-eq-self--61bd8ae20953e0bf001b7e4c",
  "source": {
    "blob": "52cf1f0e2009d97be473c9ce15757b2053caabab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4846,
    "line": 4838,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61bd8ae20953e0bf001b7e4c9e073a14b36c3e73de795e00a2d734de0c4cf438",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5731886-82b6-5d74-5feb-dad8bb773877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4838–4846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minKeyD_alter_eq_self [TransCmp cmp] [LawfulEqCmp cmp] {k f}
    (he : (t.alter k f).isEmpty = false) {fallback} :
    (t.alter k f |>.minKeyD fallback) = k ↔ (f (t.get? k)).isSome ∧ ∀ k', k' ∈ t → (cmp k k').isLE :=
  Impl.minKeyD_alter_eq_self t.wf he

namespace Const

variable {β : Type v} {t : DTreeMap α β cmp}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean#L4838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cf1f0e2009d97be473c9ce15757b2053caabab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
