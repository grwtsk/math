# compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80bf24cdb078f082de8821a85d2bd8c664c660f7679e8e7e3944c95ac0ab9c6b",
  "kind": "instance",
  "lexical_name": "compactSpace",
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
  "slug": "compactspace--0590b710f8ef6e0fb82fac07",
  "source": {
    "blob": "6004cfed563644228ff88a81cb0169958b10de93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0590b710f8ef6e0fb82fac072dd7e9a46697ff1e8b6a1c75728cc5b6688653a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80bf24cdb078f082de8821a85d2bd8c664c660f7679e8e7e3944c95ac0ab9c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance compactSpace : CompactSpace (PrimeSpectrum R) := by
  refine compactSpace_of_finite_subfamily_closed fun S S_closed S_empty ↦ ?_
  choose I hI using fun i ↦ (isClosed_iff_zeroLocus_ideal (S i)).mp (S_closed i)
  simp_rw [hI, ← zeroLocus_iSup, zeroLocus_empty_iff_eq_top, ← top_le_iff] at S_empty ⊢
  exact IsCompactElement.exists_finset_of_le_iSup Ideal.isCompactElement_top _ S_empty

/-- The prime spectrum of a commutative semiring has discrete Zariski topology iff it is finite and
the semiring has Krull dimension zero or is trivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant98bccefff0ad2ba271f3daa3e4f21b98577b04696064fa5f46737338917b85b8.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6004cfed563644228ff88a81cb0169958b10de93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
