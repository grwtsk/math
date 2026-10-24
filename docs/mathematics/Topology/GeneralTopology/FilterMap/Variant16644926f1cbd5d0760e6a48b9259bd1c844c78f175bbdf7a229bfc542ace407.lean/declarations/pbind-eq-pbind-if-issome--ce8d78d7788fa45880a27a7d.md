# pbind_eq_pbind_if_isSome

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c5925e3-4972-d476-6759-e28019359070",
  "kind": "theorem",
  "lexical_name": "pbind_eq_pbind_if_isSome",
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
  "slug": "pbind-eq-pbind-if-issome--ce8d78d7788fa45880a27a7d",
  "source": {
    "blob": "2d9f20680a123ddbd21d6deb3e478fa83d8e6191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8d78d7788fa45880a27a7d02f8ea25b60b66768d7bcd70f21ff75663166016",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c5925e3-4972-d476-6759-e28019359070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pbind_eq_pbind_if_isSome [Monad m] [MonadAttach m] (x : m (Option α)) (f : (_ : _) → _ → m β) :
    MonadAttach.pbind x f = MonadAttach.pbind x
        (fun a ha => optionPelim' a (fun _ => f none (by simp_all)) (fun a _ => f (some a) (by simp_all))) := by
  intros; congr; ext
  simp only [optionPelim']
  split <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FilterMap/Variant16644926f1cbd5d0760e6a48b9259bd1c844c78f175bbdf7a229bfc542ace407.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9f20680a123ddbd21d6deb3e478fa83d8e6191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
