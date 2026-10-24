# comapQuotientEquivRangeS_symm_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0051174-bfbc-bedf-0331-2af7030d1a3f",
  "kind": "theorem",
  "lexical_name": "comapQuotientEquivRangeS_symm_mk",
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
  "slug": "comapquotientequivranges-symm-mk--a8e54b321896455fa533ff1e",
  "source": {
    "blob": "b1013e724ba6516769caa820a77dd75ffc2a276d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 371,
    "path": "GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8e54b321896455fa533ff1ee834a88a83307fbf3ee474418fb88e95584acb82",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0051174-bfbc-bedf-0331-2af7030d1a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem comapQuotientEquivRangeS_symm_mk (f : N →+* M)
    {d : RingCon N} (hcd : d = comap c f) (x : N) :
    (c.comapQuotientEquivRangeS f hcd).symm
      (⟨f x, RingHom.mem_rangeS_self (c.mk'.comp f) x ⟩) = x := by
  simp [RingEquiv.symm_apply_eq]

/-- The **third isomorphism theorem for (semi-)rings**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variantb1c12f1a05d05013f20d16f78a5fdc0b5fc23668fd33364113b7d49366dfea68.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1013e724ba6516769caa820a77dd75ffc2a276d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
