# flatMap_eq_foldl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:220ae2ec-ad27-66ce-5b3b-54aad40f4735",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f849b23b-37fa-bcfb-b4d6-32ac0eaaf95c",
  "kind": "theorem",
  "lexical_name": "flatMap_eq_foldl",
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
  "slug": "flatmap-eq-foldl--e3ec4cfa019d17130fdc0c8d",
  "source": {
    "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2198,
    "line": 2189,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3ec4cfa019d17130fdc0c8d1db3811ea9fc0cafbdcdaddb0abf4806e1a4d700",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f849b23b-37fa-bcfb-b4d6-32ac0eaaf95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2189–2198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flatMap_eq_foldl {f : α → List β} {l : List α} :
    l.flatMap f = l.foldl (fun acc a => acc ++ f a) [] := by
  suffices ∀ l', l' ++ l.flatMap f = l.foldl (fun acc a => acc ++ f a) l' by simpa using this []
  intro l'
  induction l generalizing l'
  · simp
  next ih => rw [flatMap_cons, ← append_assoc, ih, foldl_cons]

/-! ### replicate -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean#L2189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519a54b75079a3acb036a212f7303f8d497ecba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
