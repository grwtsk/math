# _root_.GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.Filter.HasBasis.isVonNBounded_basis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c224f48-cb5d-0241-17e1-1c08f95846dc",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.Filter.HasBasis.isVonNBounded_basis_iff",
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
  "slug": "root-grwtsk-topology-generaltopology-isvonnbounded-variant25f5b9d38e8559--b15732741133f04c2012fc53",
  "source": {
    "blob": "8c49cd1856d66addd45ccc716974270a850b87b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b15732741133f04c2012fc53054ccc127e879944a01b71974ac2bbfb8d7a418e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c224f48-cb5d-0241-17e1-1c08f95846dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsVonNBounded.Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.Filter.HasBasis.isVonNBounded_basis_iff {q : ι → Prop} {s : ι → Set E} {A : Set E}
    (h : (𝓝 (0 : E)).HasBasis q s) : IsVonNBounded 𝕜 A ↔ ∀ (i) (_ : q i), Absorbs 𝕜 (s i) A := by
  refine' ⟨fun hA i hi => hA (h.mem_of_mem hi), fun hA V hV => _⟩
  rcases h.mem_iff.mp hV with ⟨i, hi, hV⟩
  exact (hA i hi).mono_left hV
#align filter.has_basis.is_vonN_bounded_basis_iff Filter.HasBasis.isVonNBounded_basis_iff

/-- Subsets of bounded sets are bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant0b4938de8d71a87763da66fd9f48a764c9200794da827da74c8879d2fa7cadc3.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c49cd1856d66addd45ccc716974270a850b87b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
