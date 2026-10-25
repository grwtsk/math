# Mapping.subscript

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5576f6a9f6ef3483c6e79bba9e0b6265a00a8a025d9924dc2a1f44db1ba9603",
  "kind": "def",
  "lexical_name": "Mapping.subscript",
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
  "slug": "mapping-subscript--b3f02d776424e7ee0141d981",
  "source": {
    "blob": "dff7155caf8ce49bc615073aa197eeddbabe3256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3f02d776424e7ee0141d9814e6353425fd2ca6935c84f7d88a98deda58f67df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5576f6a9f6ef3483c6e79bba9e0b6265a00a8a025d9924dc2a1f44db1ba9603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Mapping.subscript := mkMapping
  "₀₁₂₃₄₅₆₇₈₉ₐₑₕᵢⱼₖₗₘₙₒₚᵣₛₜᵤᵥₓᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘꞯʀꜱᴛᴜᴠᴡʏᴢᵦᵧᵨᵩᵪ₊₋₌₍₎"
  "0123456789aehijklmnoprstuvxABCDEFGHIJKLMNOPQRSTUVWYZβγρφχ+-=()"

/-- Collects runs of text satisfying `p` followed by whitespace. Fails if the first character does
not satisfy `p`. If `many` is true, it will parse 1 or more many whitespace-separated runs,
otherwise it will parse only 1. If successful, it passes the result to `k` as an array `(a, b, c)`
where `a..b` is a token and `b..c` is whitespace.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Superscript/Variantc65ec2d5526ea7a2e83ded6c917f808a1ef3297c50880d767c79c8c1523ff684.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dff7155caf8ce49bc615073aa197eeddbabe3256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
