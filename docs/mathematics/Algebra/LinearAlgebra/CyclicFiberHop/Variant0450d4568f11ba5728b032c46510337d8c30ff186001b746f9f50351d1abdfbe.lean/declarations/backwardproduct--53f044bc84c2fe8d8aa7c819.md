# backwardProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ae9fea9842157f6a01c56f8e4e962a912eb683dfc3fbfd541cb1f0ab420adbc",
  "kind": "def",
  "lexical_name": "backwardProduct",
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
  "slug": "backwardproduct--53f044bc84c2fe8d8aa7c819",
  "source": {
    "blob": "94e862c9a6372c58f5547a14453d0afee378b9b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 141,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53f044bc84c2fe8d8aa7c819228444324c3910f7f4f9b3761b2244b724f42b7e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ae9fea9842157f6a01c56f8e4e962a912eb683dfc3fbfd541cb1f0ab420adbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def backwardProduct (system : StepSystem h) :
    CoverPhase h → Nat → Fiber3 ≃ₗ[ℝ] Fiber3
  | _, 0 => LinearEquiv.refl ℝ Fiber3
  | p, n + 1 =>
      (backwardProduct system (successor h p) n).trans
        (system.step p).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant0450d4568f11ba5728b032c46510337d8c30ff186001b746f9f50351d1abdfbe.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94e862c9a6372c58f5547a14453d0afee378b9b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
