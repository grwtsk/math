# noZeroSMulDivisors_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67d63fe5f90d4bbf4ff1e9e3c45399e8cb6c53dadf9527dc039d62bedd0fccd7",
  "kind": "instance",
  "lexical_name": "noZeroSMulDivisors_bot",
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
  "slug": "nozerosmuldivisors-bot--d32050160726511104b7b7aa",
  "source": {
    "blob": "096628a0c6fae58094b4b02571219715aa7e540c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 256,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d32050160726511104b7b7aa7ffe18bef2ca89bfb203a31d477b486a7e4f14ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67d63fe5f90d4bbf4ff1e9e3c45399e8cb6c53dadf9527dc039d62bedd0fccd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance noZeroSMulDivisors_bot [NoZeroSMulDivisors R A] : NoZeroSMulDivisors R S :=
  ⟨fun {c x} h =>
    have : c = 0 ∨ (x : A) = 0 := eq_zero_or_eq_zero_of_smul_eq_zero (congr_arg ((↑) : S → A) h)
    this.imp_right (@Subtype.ext_iff _ _ x 0).mpr⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant2f9d916b9da295043302853ae249a6dc8d20cc2396b671b114f439fd66706158.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `096628a0c6fae58094b4b02571219715aa7e540c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
