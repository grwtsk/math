# conjGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0c28f0246565cc2705413523b994ea3c87be94adff691504602d28606e35bed",
  "kind": "def",
  "lexical_name": "conjGL",
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
  "slug": "conjgl--28d38dbaabc3be78ec127529",
  "source": {
    "blob": "d7050e9619a11c099a47a8a0435f3ee5e8bd4660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 201,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2c8de586c7494e1b7a686a824c594076645fd3c00f5fa1b88da0e0e88bf2dfe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28d38dbaabc3be78ec127529a092d1c596a9e3facb7ef7ea49d66680edb743d4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2c8de586c7494e1b7a686a824c594076645fd3c00f5fa1b88da0e0e88bf2dfe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0c28f0246565cc2705413523b994ea3c87be94adff691504602d28606e35bed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conjGL (Γ : Subgroup SL(2, ℤ)) (g : GL (Fin 2) ℝ) : Subgroup SL(2, ℤ) :=
  ((toConjAct g⁻¹) • (Γ.map <| mapGL ℝ)).comap (mapGL ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2c8de586c7494e1b7a686a824c594076645fd3c00f5fa1b88da0e0e88bf2dfe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant2c8de586c7494e1b7a686a824c594076645fd3c00f5fa1b88da0e0e88bf2dfe4.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7050e9619a11c099a47a8a0435f3ee5e8bd4660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
