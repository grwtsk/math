# freeHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4409a17fc88e4cf2a4d04f5a07cb6c8a16e8242ddec4f93267f47ecc391fcd1",
  "kind": "def",
  "lexical_name": "freeHomotopy",
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
  "slug": "freehomotopy--680bad4910312744aec5b807",
  "source": {
    "blob": "626ee8358fa28f040b6e2bdf389e5ea29b70085d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetPoleContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:680bad4910312744aec5b8079d020345e1a9e2a93d5ac8fd3667cb3753b796ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetPoleContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4409a17fc88e4cf2a4d04f5a07cb6c8a16e8242ddec4f93267f47ecc391fcd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeHomotopy {n : ℕ} {v y : List Coordinates} {p : List Plan}
    (h : check n v p y = true) :
    HomotopyWith (sourceLoop n v) (imageLoop n y)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) := by
  obtain ⟨hn,_hv,_hp,_hy,hvc,hyc,_⟩ := (check_iff _ _ _ _).mp h
  exact PolygonFreeHomotopy.freeHomotopy poleNormalizedZeta
    differentiable_poleNormalizedZeta.continuous hn (vertices v) (vertices y)
    (congrArg toComplex hvc) (congrArg toComplex hyc) (checked_cells h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetPoleContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetPoleContour.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `626ee8358fa28f040b6e2bdf389e5ea29b70085d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
