# Int.coprime_of_sq_sum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7c9c71f-fbdc-5c74-86ec-ceb3944319e4",
  "kind": "theorem",
  "lexical_name": "Int.coprime_of_sq_sum'",
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
  "slug": "int-coprime-of-sq-sum--99836957c2f0ed5800ce50cd",
  "source": {
    "blob": "0ee92ef1ec8c5716d7667065593062873a64a973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99836957c2f0ed5800ce50cdee2a5c438b51af33a8529287ba8c12eb51f4bff9",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7c9c71f-fbdc-5c74-86ec-ceb3944319e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.coprime_of_sq_sum' {r s : ℤ} (h : IsCoprime r s) :
    IsCoprime (r ^ 2 + s ^ 2) (r * s) := by
  apply IsCoprime.mul_right (Int.coprime_of_sq_sum (isCoprime_comm.mp h))
  rw [add_comm]; apply Int.coprime_of_sq_sum h
#align int.coprime_of_sq_sum' Int.coprime_of_sq_sum'

namespace Fermat42

-- If we have a solution to a ^ 4 + b ^ 4 = c ^ 2, we can construct a smaller one. This
-- implies there can't be a smallest solution.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Varianta5ffbcd77b99cda51daed295cec8e22eabc2a7240c3c2a72d66a1b0415bcff46.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ee92ef1ec8c5716d7667065593062873a64a973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
