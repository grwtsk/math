# Finset.expect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71179406a51e2bb9039aa21c64ba7b5bcdecf9a9a4d4b0f4c46ef55a223e4ae7",
  "kind": "def",
  "lexical_name": "Finset.expect",
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
  "slug": "finset-expect--8ca498353cbbe694247d9d34",
  "source": {
    "blob": "c4e1f4eb14651b43bec5daa17d6b71107a587c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ca498353cbbe694247d9d34f97b51542f7bdb8d696b24be4e880ec10264a0f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71179406a51e2bb9039aa21c64ba7b5bcdecf9a9a4d4b0f4c46ef55a223e4ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Finset.expect [AddCommMonoid M] [Module ℚ≥0 M] (s : Finset ι) (f : ι → M) : M :=
  (#s : ℚ≥0)⁻¹ • ∑ i ∈ s, f i

namespace BigOperators
open Batteries.ExtendedBinder Lean Meta

/--
* `𝔼 i ∈ s, f i` is notation for `Finset.expect s f`. It is the expectation of `f i` where `i`
  ranges over the finite set `s` (either a `Finset` or a `Set` with a `Fintype` instance).
* `𝔼 i, f i` is notation for `Finset.expect Finset.univ f`. It is the expectation of `f i` where `i`
  ranges over the finite domain of `f`.
* `𝔼 i ∈ s with p i, f i` is notation for `Finset.expect (Finset.filter p s) f`.
* `𝔼 (i ∈ s) (j ∈ t), f i j` is notation for `Finset.expect (s ×ˢ t) (fun ⟨i, j⟩ ↦ f i j)`.

These support destructuring, for example `𝔼 ⟨i, j⟩ ∈ s ×ˢ t, f i j`.

Notation: `"𝔼" bigOpBinders* ("with" term)? "," term` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant817924a968ad22be64c68f85dbc93ba01e5ab1f7e4bbdb47fcf8704403ecb247.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e1f4eb14651b43bec5daa17d6b71107a587c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
