# skyscraperPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b8ed59dadb690a05ba798c981d467fef420078efafca909dc4da443484be025",
  "kind": "def",
  "lexical_name": "skyscraperPresheaf",
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
  "slug": "skyscraperpresheaf--0dfd00418ecd276831fc16de",
  "source": {
    "blob": "8a2dfdd3a736b51f40f6b456336d331620c95204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 68,
    "path": "GRWTSK/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dfd00418ecd276831fc16de887f6300b252338bef678af6124ee01c460782fb",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b8ed59dadb690a05ba798c981d467fef420078efafca909dc4da443484be025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skyscraperPresheaf : Presheaf C X where
  obj U := if p₀ ∈ unop U then A else terminal C
  map {U V} i :=
    if h : p₀ ∈ unop V then eqToHom <| by
      rw [ite_eq_left h, ite_eq_left (by simpa using i.unop.le h)]
    else ((ite_eq_right h).symm.ndrec terminalIsTerminal).from _
  map_id U :=
    (em (p₀ ∈ U.unop)).elim (fun h => dite_eq_left h) fun h =>
      ((ite_eq_right h).symm.ndrec terminalIsTerminal).hom_ext _ _
  map_comp {U V W} iVU iWV := by
    by_cases hW : p₀ ∈ unop W
    · have hV : p₀ ∈ unop V := leOfHom iWV.unop hW
      simp only [dite_eq_left hW, dite_eq_left hV, eqToHom_trans]
    · dsimp; rw [dite_eq_right hW]; apply ((ite_eq_right hW).symm.ndrec terminalIsTerminal).hom_ext

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant92c38003913d1f84cdfa49d434abc22d3fc421d8639b7eb9386014bae4fe6bae.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a2dfdd3a736b51f40f6b456336d331620c95204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
