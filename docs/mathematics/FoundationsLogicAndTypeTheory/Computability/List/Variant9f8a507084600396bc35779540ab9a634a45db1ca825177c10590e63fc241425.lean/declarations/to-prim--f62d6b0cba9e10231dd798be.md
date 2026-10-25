# to_prim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 616,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95c7ddcb-9c61-34a7-5628-83d281eedc5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8dc1b1d-a817-665b-dc73-fe8c6b76c909",
  "kind": "theorem",
  "lexical_name": "to_prim",
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
  "slug": "to-prim--f62d6b0cba9e10231dd798be",
  "source": {
    "blob": "1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 616,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f62d6b0cba9e10231dd798be073b29a548c8823eeacfacdeba2422b331dc8124",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8dc1b1d-a817-665b-dc73-fe8c6b76c909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_prim {n f} (pf : @Nat.Primrec' n f) : Primrec f := by
  induction pf with
  | zero => exact .const 0
  | succ => exact _root_.Primrec.succ.comp .vector_head
  | get i => exact Primrec.vector_get.comp .id (.const i)
  | comp _ _ _ hf hg => exact hf.comp (.vector_ofFn fun i => hg i)
  | @prec n f g _ _ hf hg =>
    exact
      .nat_rec' .vector_head (hf.comp Primrec.vector_tail)
        (hg.comp <|
          Primrec.vector_cons.comp (Primrec.fst.comp .snd) <|
          Primrec.vector_cons.comp (Primrec.snd.comp .snd) <|
            (@Primrec.vector_tail _ _ (n + 1)).comp .fst).to₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
