# scanlM.loop_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f662fec-0bf0-c995-aeb6-5b49d435798c",
  "kind": "theorem",
  "lexical_name": "scanlM.loop_toArray",
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
  "slug": "scanlm-loop-toarray--6f95a97d1144fd3d59cccc49",
  "source": {
    "blob": "c672d0d5078b7bbf1d7cdeafc1887d4b99afa175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant535bc944fc307c3eb8a3bd801886abbfe831c1fb99ef23ebe999d7cbd99e985b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f95a97d1144fd3d59cccc4998f25263a083fd01a958c6e40bbc119f8c5ad801",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant535bc944fc307c3eb8a3bd801886abbfe831c1fb99ef23ebe999d7cbd99e985b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f662fec-0bf0-c995-aeb6-5b49d435798c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scanlM.loop_toArray [Monad m] [LawfulMonad m] (f : β → α → m β) (as : Vector α n)
    (h_stop : n ≤ as.toArray.size) (i : Nat) (hi : i ≤ n) (cur : β)
    (acc_v : Vector β i) (acc_a : Array β) (h_acc : acc_v.toArray = acc_a) :
    Vector.toArray <$> Vector.scanlM.loop f as cur i hi acc_v =
    Array.scanlM.loop f cur as.toArray i n h_stop acc_a := by
  induction h_term : n - i generalizing i cur acc_v acc_a with
  | zero =>
    unfold Vector.scanlM.loop Array.scanlM.loop
    simp [h_acc, show i = n by omega]
  | succ k ih =>
    unfold Vector.scanlM.loop Array.scanlM.loop
    simp only [show i < n by omega, dite_true, map_bind]
    apply bind_congr
    intro next
    apply ih
    . simp [Vector.toArray_push, h_acc]
    . omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant535bc944fc307c3eb8a3bd801886abbfe831c1fb99ef23ebe999d7cbd99e985b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant535bc944fc307c3eb8a3bd801886abbfe831c1fb99ef23ebe999d7cbd99e985b.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c672d0d5078b7bbf1d7cdeafc1887d4b99afa175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
