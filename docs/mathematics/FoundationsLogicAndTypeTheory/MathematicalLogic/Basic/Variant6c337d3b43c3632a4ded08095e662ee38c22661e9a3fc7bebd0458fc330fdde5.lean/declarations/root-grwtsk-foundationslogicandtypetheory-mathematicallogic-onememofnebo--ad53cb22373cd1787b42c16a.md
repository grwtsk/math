# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.DivisionRing.isSimpleRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baa7b566bc1df4041b036b1e4ed21ed7af643e28a343c4a7eba5d32a70b7878b",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.DivisionRing.isSimpleRing",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-onememofnebo--ad53cb22373cd1787b42c16a",
  "source": {
    "blob": "4250720ec91b7ffa5b1fa9389439fed2845ea0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad53cb22373cd1787b42c16a6bebfac4d52348d2edb6e78be14918a5b4692c61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baa7b566bc1df4041b036b1e4ed21ed7af643e28a343c4a7eba5d32a70b7878b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OneMemOfNeBot.Variant865a8caa40562ac99921803fcf16615c4143a8a85a15dbb95bd93d4b3d24dda7.DivisionRing.isSimpleRing (A : Type*) [DivisionRing A] : IsSimpleRing A :=
  .of_eq_bot_or_eq_top <| fun I ↦ by
    rw [or_iff_not_imp_left, ← I.one_mem_iff]
    intro H
    obtain ⟨x, hx1, hx2 : x ≠ 0⟩ := SetLike.exists_of_lt (bot_lt_iff_ne_bot.mpr H : ⊥ < I)
    simpa [inv_mul_cancel₀ hx2] using I.mul_mem_left x⁻¹ _ hx1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6c337d3b43c3632a4ded08095e662ee38c22661e9a3fc7bebd0458fc330fdde5.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4250720ec91b7ffa5b1fa9389439fed2845ea0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
