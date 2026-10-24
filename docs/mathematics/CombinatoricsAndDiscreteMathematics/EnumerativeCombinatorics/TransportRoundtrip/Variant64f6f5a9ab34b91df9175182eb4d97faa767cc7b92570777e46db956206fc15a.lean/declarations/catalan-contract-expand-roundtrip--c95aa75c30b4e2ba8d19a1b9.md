# catalan_contract_expand_roundtrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d58b1ef9-150d-b7b4-82f5-d382a73f89eb",
  "kind": "theorem",
  "lexical_name": "catalan_contract_expand_roundtrip",
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
  "slug": "catalan-contract-expand-roundtrip--c95aa75c30b4e2ba8d19a1b9",
  "source": {
    "blob": "d3b77e1ce6bcff537b555e86880e98b9d37f3031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c95aa75c30b4e2ba8d19a1b9d661972437944fecaef572f1a1f2c2590314f688",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d58b1ef9-150d-b7b4-82f5-d382a73f89eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem catalan_contract_expand_roundtrip
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U)
    (y : C.bundle.Fiber U) :
    (Fiber.transportPath C.transport p)
      ((Fiber.transportPath C.transport p).symm y) = y :=
  contract_expand_roundtrip C p y

end Monodromy

namespace Fiber

/--
Rodgers-Tao derived transport preserves Euler characteristic, provided the
Rodgers-Tao flow has been supplied as an Euler-preserving transport of section
complexes.

This is the bridge from dynamic analytic transport to static index stability.
It is contract composition, not an internal proof of the Rodgers-Tao theorem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/TransportRoundtrip/Variant64f6f5a9ab34b91df9175182eb4d97faa767cc7b92570777e46db956206fc15a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b77e1ce6bcff537b555e86880e98b9d37f3031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
