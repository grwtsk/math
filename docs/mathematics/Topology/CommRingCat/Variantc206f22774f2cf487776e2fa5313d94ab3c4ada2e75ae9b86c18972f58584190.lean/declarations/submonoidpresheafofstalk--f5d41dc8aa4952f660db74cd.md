# submonoidPresheafOfStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4ac37b511c924ecbdaf3db6afb20802520c65b04e3c3438094d76bad1f566bf",
  "kind": "def",
  "lexical_name": "submonoidPresheafOfStalk",
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
  "slug": "submonoidpresheafofstalk--f5d41dc8aa4952f660db74cd",
  "source": {
    "blob": "a84c2503552679befadb47e5fa28ba5192e95ed6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Topology/CommRingCat/Variantc206f22774f2cf487776e2fa5313d94ab3c4ada2e75ae9b86c18972f58584190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5d41dc8aa4952f660db74cd094f1889a5f0d532ccf5a46af6502cc7e462811f",
  "verification": {
    "reference": "docs/verification/Topology/CommRingCat/Variantc206f22774f2cf487776e2fa5313d94ab3c4ada2e75ae9b86c18972f58584190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4ac37b511c924ecbdaf3db6afb20802520c65b04e3c3438094d76bad1f566bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def submonoidPresheafOfStalk (S : ∀ x : X, Submonoid (F.stalk x)) :
    F.SubmonoidPresheaf where
  obj U := ⨅ x : U.unop, Submonoid.comap (F.germ U.unop x.1 x.2).hom (S x)
  map {U V} i := by
    intro s hs
    simp only [Submonoid.mem_comap, Submonoid.mem_iInf] at hs ⊢
    intro x
    change (F.map i.unop.op ≫ F.germ V.unop x.1 x.2) s ∈ _
    rw [F.germ_res]
    exact hs ⟨_, i.unop.le x.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CommRingCat/Variantc206f22774f2cf487776e2fa5313d94ab3c4ada2e75ae9b86c18972f58584190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CommRingCat/Variantc206f22774f2cf487776e2fa5313d94ab3c4ada2e75ae9b86c18972f58584190.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a84c2503552679befadb47e5fa28ba5192e95ed6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
