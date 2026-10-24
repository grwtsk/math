# supportedEquivFinsupp_symm_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1525432f-183d-6aed-de14-336010793d3c",
  "kind": "theorem",
  "lexical_name": "supportedEquivFinsupp_symm_single",
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
  "slug": "supportedequivfinsupp-symm-single--3467b8d2494e1ce9bc771e39",
  "source": {
    "blob": "df6e7106801a6a1319ed50a2a89b30e15cc760f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3467b8d2494e1ce9bc771e39bb9b6140bb2bc39e53fd9e2e709c8b6a29912717",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1525432f-183d-6aed-de14-336010793d3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem supportedEquivFinsupp_symm_single (s : Set α) (i : s) (a : M) :
    ((supportedEquivFinsupp (R := R) s).symm (single i a) : α →₀ M) = single ↑i a := by
  classical simp

section LMapDomain

variable {α' : Type*} (M R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df6e7106801a6a1319ed50a2a89b30e15cc760f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
