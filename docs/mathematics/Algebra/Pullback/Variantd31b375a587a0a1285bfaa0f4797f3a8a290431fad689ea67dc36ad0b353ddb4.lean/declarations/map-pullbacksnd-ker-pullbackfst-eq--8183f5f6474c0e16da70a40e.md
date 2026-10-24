# map_pullbackSnd_ker_pullbackFst_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4a577f2-f408-6446-f207-acfbb9f0a60d",
  "kind": "theorem",
  "lexical_name": "map_pullbackSnd_ker_pullbackFst_eq",
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
  "slug": "map-pullbacksnd-ker-pullbackfst-eq--8183f5f6474c0e16da70a40e",
  "source": {
    "blob": "912dbd28a11e5329c92336e9de989066df1d2048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 99,
    "path": "GRWTSK/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8183f5f6474c0e16da70a40ee689d312dc493dda42a537c9155966893f8fe89a",
  "verification": {
    "reference": "docs/verification/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4a577f2-f408-6446-f207-acfbb9f0a60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_pullbackSnd_ker_pullbackFst_eq (f : R →+* T) (g : S →+* T) :
    Ideal.map (f.pullbackSnd g) (RingHom.ker (f.pullbackFst g)) = RingHom.ker g := by
  apply le_antisymm
  · rw [Ideal.map_le_iff_le_comap]
    rintro ⟨⟨_, _⟩, h⟩
    simp at h ⊢; grind
  · intro s hs
    exact Ideal.mem_map_of_mem (f.pullbackSnd g) (x := ⟨(0, s), by simpa using hs.symm⟩)
      (I := RingHom.ker (f.pullbackFst g)) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pullback/Variantd31b375a587a0a1285bfaa0f4797f3a8a290431fad689ea67dc36ad0b353ddb4.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `912dbd28a11e5329c92336e9de989066df1d2048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
