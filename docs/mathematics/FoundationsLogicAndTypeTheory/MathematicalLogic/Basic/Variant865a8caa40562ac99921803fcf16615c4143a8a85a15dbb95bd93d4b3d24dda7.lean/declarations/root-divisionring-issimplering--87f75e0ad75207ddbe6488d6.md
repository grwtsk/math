# _root_.DivisionRing.isSimpleRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7134fa5f227208aa841f2b2cbf12c56744d7e8564c781df6d254a76d084c9c7e",
  "kind": "instance",
  "lexical_name": "_root_.DivisionRing.isSimpleRing",
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
  "slug": "root-divisionring-issimplering--87f75e0ad75207ddbe6488d6",
  "source": {
    "blob": "fdefa59d502995d47446efe232f5de2a1b57379f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87f75e0ad75207ddbe6488d6b23ffca05537914d6d6619b4d77aed89fbe13183",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7134fa5f227208aa841f2b2cbf12c56744d7e8564c781df6d254a76d084c9c7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.DivisionRing.isSimpleRing (A : Type*) [DivisionRing A] : IsSimpleRing A :=
  .of_eq_bot_or_eq_top <| fun I ↦ by
    rw [or_iff_not_imp_left, ← I.one_mem_iff]
    intro H
    obtain ⟨x, hx1, hx2 : x ≠ 0⟩ := SetLike.exists_of_lt (bot_lt_iff_ne_bot.mpr H : ⊥ < I)
    simpa [inv_mul_cancel₀ hx2] using I.mul_mem_left x⁻¹ _ hx1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdefa59d502995d47446efe232f5de2a1b57379f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
