# IsRelIff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20de957eb417242a3b29d3e4cbe58e8de13afedae661f3f9c8aed000d02d78e3",
  "kind": "class",
  "lexical_name": "IsRelIff",
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
  "slug": "isreliff--a18d01dc29eb9c844286daca",
  "source": {
    "blob": "36c33108d11b3e8846e42b7d079354af5d0c20f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 86,
    "path": "GRWTSK/Algebra/Basic/Variant0b341ef3b4cffd830e0d37d5a8e2e32b134b2cc52a0f6766140b27b2498c8f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a18d01dc29eb9c844286daca4ca1b3f8f880d610e2917abc21e3c4b9b325fc19",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant0b341ef3b4cffd830e0d37d5a8e2e32b134b2cc52a0f6766140b27b2498c8f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20de957eb417242a3b29d3e4cbe58e8de13afedae661f3f9c8aed000d02d78e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsRelIff : Prop where
  rel' (i₁ i₂ : ι) (h : c'.Rel (e.f i₁) (e.f i₂)) : c.Rel i₁ i₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant0b341ef3b4cffd830e0d37d5a8e2e32b134b2cc52a0f6766140b27b2498c8f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant0b341ef3b4cffd830e0d37d5a8e2e32b134b2cc52a0f6766140b27b2498c8f6c.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36c33108d11b3e8846e42b7d079354af5d0c20f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
