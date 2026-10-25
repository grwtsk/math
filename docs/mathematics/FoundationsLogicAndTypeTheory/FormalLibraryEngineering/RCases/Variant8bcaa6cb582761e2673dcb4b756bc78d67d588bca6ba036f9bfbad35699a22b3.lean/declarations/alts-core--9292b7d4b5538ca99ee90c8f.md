# alts₁Core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60a831890c03cf17c000bb825832f3c868421e14de7965e0aa2b8b9d4f1411ea",
  "kind": "def",
  "lexical_name": "alts₁Core",
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
  "slug": "alts-core--9292b7d4b5538ca99ee90c8f",
  "source": {
    "blob": "e1fda580b9107b66e104e2eb0f3316eb249d48c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9292b7d4b5538ca99ee90c8f572c5c127f2c6f310c80a51433e4ef3cef86990e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60a831890c03cf17c000bb825832f3c868421e14de7965e0aa2b8b9d4f1411ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alts₁Core : List/-Σ-/ (List/-Π-/ RCasesPatt) → List/-Σ-/ RCasesPatt
  | []          => []
  | [[alts _ ps]] => ps
  | p :: ps     => tuple₁ p :: alts₁Core ps

/--
This function is used for producing rcases patterns based on a case tree. This is like
`alts₁Core`, but it produces a cases pattern directly instead of a list of alternatives. We
specially translate the empty alternation to `⟨⟩`, and translate `|(a | b)` to `⟨a | b⟩` (because we
don't have any syntax for unary alternation). Otherwise we can use the regular merging of
alternations at the last argument so that `a | b | (c | d)` becomes `a | b | c | d`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1fda580b9107b66e104e2eb0f3316eb249d48c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
