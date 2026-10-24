# dependency_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efb2d0b6-69a0-4746-9602-418950858db3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd93d8ae-0159-1eff-6cff-f05ece243a3a",
  "kind": "theorem",
  "lexical_name": "dependency_drop",
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
  "slug": "dependency-drop--87c59ccb36c6c10563e14c7b",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7162,
    "line": 7135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87c59ccb36c6c10563e14c7b58636527df35024fdaf838dbf6924158097981a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd93d8ae-0159-1eff-6cff-f05ece243a3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7135–7162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dependency_drop (hno : ¬ ForbiddenConfiguration P C)
    {n d : Node Ω C} (hd : (schema hw).Dependency d n)
    {D : Set (Set S)} (hD : IsComponent (SecondaryEdge P C) D)
    (hplain : ∀ I ∈ D, PlainLayer P C I)
    (hn : Ω.profile n.type ∈ D) (hd' : Ω.profile d.type ∈ D) :
    Ω.potential C D d.type < Ω.potential C D n.type := by
  induction hd with
  | @head n a d he =>
    obtain ⟨ha, rfl⟩ := domain_eq he
    obtain ⟨s, hs⟩ := a.sorted
    have hh := Ω.frame_domain_drop hw hs a.typed
      (a.product ▸ n.plain.active) a.active hd'
    simpa only [Key.domainNode, ← a.product] using hh
  | @tail n d a hd ih =>
    have htarget : Ω.profile ((schema hw).target n a).type ∈ D :=
      hD.between hd' hn (dependency_reach hd) (target_reach a)
    have hneg := dependency_negative hd hD htarget hd'
    have hh := ih htarget hd'
    obtain ⟨s, hs⟩ := a.sorted
    have hnN : Normal (.pi a.domain a.body) := a.product ▸ n.normal
    have hdrop := Ω.frame_target_drop hw hno hD hplain hneg hs hnN a.typed
      (a.product ▸ hn) (by simpa only [schema, Key.target, ContextTower.profile_normalForm] using htarget)
    exact hh.trans (by simpa only [schema, Key.target, ← a.product] using hdrop)

end Schema

variable [Fintype S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L7135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
