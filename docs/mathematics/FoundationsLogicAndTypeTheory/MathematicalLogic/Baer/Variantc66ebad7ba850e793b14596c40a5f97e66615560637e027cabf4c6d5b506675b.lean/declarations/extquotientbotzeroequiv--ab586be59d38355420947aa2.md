# extQuotientBotZeroEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff40cec7cb6c8cd3f035e5f7373f4e6b2d30badbc980b56249030bdbbd7bef6d",
  "kind": "def",
  "lexical_name": "extQuotientBotZeroEquiv",
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
  "slug": "extquotientbotzeroequiv--ab586be59d38355420947aa2",
  "source": {
    "blob": "0954a2405474b81313604e243eaef2d33ae5af62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab586be59d38355420947aa230adab73e13eb484ba162d98d47ddd003b75f36c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff40cec7cb6c8cd3f035e5f7373f4e6b2d30badbc980b56249030bdbbd7bef6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def extQuotientBotZeroEquiv [Small.{v} R] (M : ModuleCat.{v} R) :
    (Ext ↧(Shrink.{v} (R ⧸ (⊥ : Ideal R))) M 0) ≃ M :=
  (Ext.homEquiv₀.trans ModuleCat.homEquiv).trans ((((Shrink.linearEquiv _ _).trans
    (Submodule.quotEquivOfEqBot _ rfl)).congrLeft M ℕ).trans
      (LinearMap.ringLmapEquivSelf R ℕ M)).toEquiv

/-- If `Ext⁰(R ⧸ ⊥, M)` is a subsingleton, then `M` is a subsingleton. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantc66ebad7ba850e793b14596c40a5f97e66615560637e027cabf4c6d5b506675b.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0954a2405474b81313604e243eaef2d33ae5af62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
