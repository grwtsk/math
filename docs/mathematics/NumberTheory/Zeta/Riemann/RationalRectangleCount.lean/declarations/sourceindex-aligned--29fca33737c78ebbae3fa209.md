# sourceIndex_aligned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20ff5d4f-7660-6812-f2f9-6806795fc952",
  "kind": "theorem",
  "lexical_name": "sourceIndex_aligned",
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
  "slug": "sourceindex-aligned--29fca33737c78ebbae3fa209",
  "source": {
    "blob": "0661a678b3599d2db6f1e54b397b8e145b5607c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 99,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29fca33737c78ebbae3fa20921420e8509dbf62873786865152780800d46da5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20ff5d4f-7660-6812-f2f9-6806795fc952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceIndex_aligned (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {d : List EdgeData} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : RationalPoleContourTube.check n (RationalRectangleMesh.vertices l u a) d y = true)
    (he : Enclosures n d) :
    PoleContourWinding.sourceIndex ht he =
      index ((RationalRectangleMesh.rectangle l u hx hy).image poleNormalizedZeta
          differentiable_poleNormalizedZeta.continuous.continuousOn)
        ((RationalRectangleMesh.rectangle l u hx hy).image_closed _ _)
        (fun t => boundary_of_tube l u hx hy hm ht he _
          ((RationalRectangleMesh.rectangle l u hx hy).curve_boundary t)) := by
  let H := sourceHomotopy l u hx hy hm ht he
  have hn : ∀ t, PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a) t ≠ 0 :=
    fun t => (PoleContourWinding.sourceLift ht he t).2
  have hc : PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a) 0 =
      PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a) 1 :=
    congrArg Subtype.val (PoleContourWinding.source_closed ht he)
  have hs := index_eq_winding _ hc hn (PoleContourWinding.sourceLift ht he)
    (PoleContourWinding.source_closed ht he) (fun _ => rfl)
  exact hs.symm.trans (index_homotopy hc _ hn _ H)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleCount.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0661a678b3599d2db6f1e54b397b8e145b5607c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
