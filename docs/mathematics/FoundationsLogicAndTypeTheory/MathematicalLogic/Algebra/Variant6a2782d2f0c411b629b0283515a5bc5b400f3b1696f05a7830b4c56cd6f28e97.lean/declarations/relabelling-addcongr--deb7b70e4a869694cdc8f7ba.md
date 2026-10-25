# Relabelling.addCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c854efd82bc4113b48cb00eeb4110e08ef875744d1913e5682379014246720c6",
  "kind": "def",
  "lexical_name": "Relabelling.addCongr",
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
  "slug": "relabelling-addcongr--deb7b70e4a869694cdc8f7ba",
  "source": {
    "blob": "18983cf788902e1140111cfd8a882bd8ce52521b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 573,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6a2782d2f0c411b629b0283515a5bc5b400f3b1696f05a7830b4c56cd6f28e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:deb7b70e4a869694cdc8f7ba486f7c2a317f34450797c0d9e7c9888e3325802a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6a2782d2f0c411b629b0283515a5bc5b400f3b1696f05a7830b4c56cd6f28e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c854efd82bc4113b48cb00eeb4110e08ef875744d1913e5682379014246720c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Relabelling.addCongr : ∀ {w x y z : PGame.{u}}, w ≡r x → y ≡r z → w + y ≡r x + z
  | ⟨wl, wr, wL, wR⟩, ⟨xl, xr, xL, xR⟩, ⟨yl, yr, yL, yR⟩, ⟨zl, zr, zL, zR⟩, ⟨L₁, R₁, hL₁, hR₁⟩,
    ⟨L₂, R₂, hL₂, hR₂⟩ => by
    let Hwx : ⟨wl, wr, wL, wR⟩ ≡r ⟨xl, xr, xL, xR⟩ := ⟨L₁, R₁, hL₁, hR₁⟩
    let Hyz : ⟨yl, yr, yL, yR⟩ ≡r ⟨zl, zr, zL, zR⟩ := ⟨L₂, R₂, hL₂, hR₂⟩
    refine ⟨Equiv.sumCongr L₁ L₂, Equiv.sumCongr R₁ R₂, ?_, ?_⟩ <;> rintro (i | j)
    · exact (hL₁ i).addCongr Hyz
    · exact Hwx.addCongr (hL₂ j)
    · exact (hR₁ i).addCongr Hyz
    · exact Hwx.addCongr (hR₂ j)
termination_by _ x _ z => (x, z)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6a2782d2f0c411b629b0283515a5bc5b400f3b1696f05a7830b4c56cd6f28e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6a2782d2f0c411b629b0283515a5bc5b400f3b1696f05a7830b4c56cd6f28e97.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18983cf788902e1140111cfd8a882bd8ce52521b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
