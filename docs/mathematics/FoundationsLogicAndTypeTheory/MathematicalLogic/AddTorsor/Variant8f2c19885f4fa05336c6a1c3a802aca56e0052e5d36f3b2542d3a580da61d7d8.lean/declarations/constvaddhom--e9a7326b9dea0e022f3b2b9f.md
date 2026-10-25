# constVAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74d297094ac3bdb09cf0b1d75ee4695904f249412f8a838685f99dc020ae4d1b",
  "kind": "def",
  "lexical_name": "constVAddHom",
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
  "slug": "constvaddhom--e9a7326b9dea0e022f3b2b9f",
  "source": {
    "blob": "55924cd14fe1e7238c0406fab126331b211ff6f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 429,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9a7326b9dea0e022f3b2b9f503a76077871b396b51b8d3f703671a4debab65a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74d297094ac3bdb09cf0b1d75ee4695904f249412f8a838685f99dc020ae4d1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constVAddHom : Multiplicative G →* Equiv.Perm P where
  toFun v := constVAdd P (Multiplicative.toAdd v)
  map_one' := constVAdd_zero G P
  map_mul' := constVAdd_add P
#align equiv.const_vadd_hom Equiv.constVAddHom

variable {P}

-- Porting note: Previous code was:
-- open _Root_.Function
open Function

/-- Point reflection in `x` as a permutation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant8f2c19885f4fa05336c6a1c3a802aca56e0052e5d36f3b2542d3a580da61d7d8.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55924cd14fe1e7238c0406fab126331b211ff6f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
