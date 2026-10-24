# update_piecewise_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43ea2e93-d178-0b96-b256-9ce3c89c39a2",
  "kind": "lemma",
  "lexical_name": "update_piecewise_of_notMem",
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
  "slug": "update-piecewise-of-notmem--70ba512a35de540feacaf7c1",
  "source": {
    "blob": "882fbcd2b454d5c0998b4036cfbb786d92998817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ba512a35de540feacaf7c10a83631526fd64cd23202634941c99ffd43df907",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43ea2e93-d178-0b96-b256-9ce3c89c39a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma update_piecewise_of_notMem [DecidableEq ι] {i : ι} (hi : i ∉ s) (v : π i) :
    update (s.piecewise f g) i v = s.piecewise f (update g i v) := by
  rw [update_piecewise]
  refine s.piecewise_congr (fun j hj => update_of_ne ?_ ..) fun _ _ => rfl
  exact fun h => hi (h ▸ hj)

@[deprecated (since := "2025-05-23")]
alias update_piecewise_of_not_mem := update_piecewise_of_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Piecewise/Variant07433491feabf9692853b26a6da790ec9e93567a4e09b3fd2ee5edf726b36c6c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `882fbcd2b454d5c0998b4036cfbb786d92998817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
