# CU

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7452ec5b9f57a62d2d7dfde93900abe3e25fd2bb1399c2234a41d898b0d3e73a",
  "kind": "structure",
  "lexical_name": "CU",
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
  "slug": "cu--314c73e7b2e0abbc18cea7bb",
  "source": {
    "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:314c73e7b2e0abbc18cea7bbc23b2f119f5346675c531f4f7a23b3a5607b5fce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7452ec5b9f57a62d2d7dfde93900abe3e25fd2bb1399c2234a41d898b0d3e73a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CU {X : Type*} [TopologicalSpace X] (P : Set X → Set X → Prop) where
  /-- The inner set in the inductive construction towards Urysohn's lemma -/
  protected C : Set X
  /-- The outer set in the inductive construction towards Urysohn's lemma -/
  protected U : Set X
  /-- The proof that `C` and `U` satisfy the property `P C U` -/
  protected P_C_U : P C U
  protected closed_C : IsClosed C
  protected open_U : IsOpen U
  protected subset : C ⊆ U
  /-- The proof that we can divide `CU` pairs in half -/
  protected hP : ∀ {c u : Set X}, IsClosed c → P c u → IsOpen u → c ⊆ u →
    ∃ (v : Set X), IsOpen v ∧ c ⊆ v ∧ closure v ⊆ u ∧ P c v ∧ P (closure v) u

namespace CU

variable {P : Set X → Set X → Prop}

/-- By assumption, for each `c : CU P` there exists an open set `u`
such that `c.C ⊆ u` and `closure u ⊆ c.U`. `c.left` is the pair `(c.C, u)`. -/
@[simps C]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9394cf07ff8f84c2c7a018b66c1dffe0a15fa444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
