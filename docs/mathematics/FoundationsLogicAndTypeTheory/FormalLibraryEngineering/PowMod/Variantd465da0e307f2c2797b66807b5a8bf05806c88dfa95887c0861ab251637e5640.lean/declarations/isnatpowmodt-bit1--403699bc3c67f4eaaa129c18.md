# IsNatPowModT.bit1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b54e1e6a-39c7-9b7b-f0ce-00c50e5209b7",
  "kind": "theorem",
  "lexical_name": "IsNatPowModT.bit1",
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
  "slug": "isnatpowmodt-bit1--403699bc3c67f4eaaa129c18",
  "source": {
    "blob": "feaa81e16cd9d879362c37595ae1693d9d0ec34f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:403699bc3c67f4eaaa129c181c678694ba02586a016c75f9b266f79d73f7a44e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b54e1e6a-39c7-9b7b-f0ce-00c50e5209b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNatPowModT.bit1 :
    IsNatPowModT (Nat.mod (Nat.pow a b) m = c) a (nat_lit 2 * b + 1) m
      (Nat.mod (Nat.mul c (Nat.mod (Nat.mul c a) m)) m) :=
  ⟨by
    rintro rfl
    show a ^ (2 * b + 1) % m = (a ^ b % m) * ((a ^ b % m * a) % m) % m
    rw [pow_add, two_mul, pow_add, pow_one, Nat.mul_mod (a ^ b % m) a, Nat.mod_mod,
      ← Nat.mul_mod (a ^ b) a, ← Nat.mul_mod, mul_assoc]⟩

/-- Evaluates and proves `a^b % m` for natural numbers using fast modular exponentiation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PowMod/Variantd465da0e307f2c2797b66807b5a8bf05806c88dfa95887c0861ab251637e5640.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feaa81e16cd9d879362c37595ae1693d9d0ec34f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
