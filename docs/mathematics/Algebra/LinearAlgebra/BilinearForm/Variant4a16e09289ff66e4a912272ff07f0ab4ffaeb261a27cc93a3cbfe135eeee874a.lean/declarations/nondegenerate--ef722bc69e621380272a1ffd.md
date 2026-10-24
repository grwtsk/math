# Nondegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b80e3dcd2dc79914b907dd92c093facae28c52cff716b69bcb3bcd7f77f6317",
  "kind": "def",
  "lexical_name": "Nondegenerate",
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
  "slug": "nondegenerate--ef722bc69e621380272a1ffd",
  "source": {
    "blob": "d1b0f0a4a96d05faabf6807d24166bd2c46adb44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1295,
    "line": 1287,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef722bc69e621380272a1ffdc82487dbcee29aa5265aec723d97960717f263b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b80e3dcd2dc79914b907dd92c093facae28c52cff716b69bcb3bcd7f77f6317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1287–1295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Nondegenerate (B : BilinForm R M) : Prop :=
  ∀ m : M, (∀ n : M, B m n = 0) → m = 0
#align bilin_form.nondegenerate BilinForm.Nondegenerate

section

variable (R M)

/-- In a non-trivial module, zero is not non-degenerate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean#L1287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b0f0a4a96d05faabf6807d24166bd2c46adb44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
