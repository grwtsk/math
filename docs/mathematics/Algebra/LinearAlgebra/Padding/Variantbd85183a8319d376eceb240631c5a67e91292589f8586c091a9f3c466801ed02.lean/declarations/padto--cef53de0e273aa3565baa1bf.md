# padTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:650ec9b46190493311039a8d99a474eb7636a3043332669eed2bf56ca227d14b",
  "kind": "def",
  "lexical_name": "padTo",
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
  "slug": "padto--cef53de0e273aa3565baa1bf",
  "source": {
    "blob": "053a7a39abafcf395a8e961744078be20a575c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cef53de0e273aa3565baa1bfebebb5ce54d8961e95951de2d8184de16d0a8a12",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:650ec9b46190493311039a8d99a474eb7636a3043332669eed2bf56ca227d14b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def padTo (_policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (R C : Nat) (_hr : r ≤ R) (_hc : c ≤ C) :
    PaddedBinaryLogicMatrix R C where
  value := {
    cell := fun i j =>
      if hri : i.val < r then
        if hcj : j.val < c then
          M.cell ⟨i.val, hri⟩ ⟨j.val, hcj⟩
        else
          false
      else
        false
  }
  active := {
    cell := fun i j =>
      decide (i.val < r ∧ j.val < c)
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053a7a39abafcf395a8e961744078be20a575c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
