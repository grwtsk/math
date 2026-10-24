# privateSlash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79cd0522a69a0337672adeb2f47a320d90b5548b2c6bfda32ad88f3627e46883",
  "kind": "def",
  "lexical_name": "privateSlash",
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
  "slug": "privateslash--d6bd441c22dee32db318f4d3",
  "source": {
    "blob": "3c085f78c1b970786e5f3f922ec4673bcf35a026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6bd441c22dee32db318f4d35ac5cebd6e6fa01a92e758591a99681ceb3b84e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79cd0522a69a0337672adeb2f47a320d90b5548b2c6bfda32ad88f3627e46883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def privateSlash (k : ℤ) (γ : GL (Fin 2) ℝ) (f : ℍ → ℂ) (x : ℍ) : ℂ :=
  σ γ (f (γ • x)) * |γ.det.val| ^ (k - 1) * UpperHalfPlane.denom γ x ^ (-k)

-- Why is `noncomputable` flag needed here, when we're in a noncomputable section already?
-- temporary notation until the instance is built
local notation:100 f " ∣[" k "] " γ:100 => ModularForm.privateSlash k γ f

set_option backward.privateInPublic true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SlashActions/Variant3a622a92ba04e193ca4056b7a16c02077df1a44cc7192552454443163ea29ed4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c085f78c1b970786e5f3f922ec4673bcf35a026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
