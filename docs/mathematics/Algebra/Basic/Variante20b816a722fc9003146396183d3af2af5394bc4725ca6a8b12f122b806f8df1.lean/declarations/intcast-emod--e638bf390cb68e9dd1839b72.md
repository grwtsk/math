# intCast_emod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df06ba54411c49d84f6ced50cd807d2544716fe9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e1bfe57-23a9-3adb-46f6-0a9aec2ebd96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:896fc153-23f6-5d9d-da33-a461a7a0f0c5",
  "kind": "theorem",
  "lexical_name": "intCast_emod",
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
  "slug": "intcast-emod--e638bf390cb68e9dd1839b72",
  "source": {
    "blob": "df06ba54411c49d84f6ced50cd807d2544716fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 561,
    "path": "GRWTSK/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e638bf390cb68e9dd1839b7212a3bb083e86b563da8cd58f1bc43b195b3abfdb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:896fc153-23f6-5d9d-da33-a461a7a0f0c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_emod (x : Int) : ((x % p : Int) : α) = (x : α) := by
  rw [intCast_ext_iff p, Int.emod_emod]

end Ring

end IsCharP

/--
`PowIdentity α p` states that `x ^ p = x` holds for all elements of `α`.

The primary source of instances is Fermat's little theorem: for a finite field with `q` elements,
`x ^ q = x` for every `x`. For `Fin p` or `ZMod p` with prime `p`, this gives `x ^ p = x`.

The `grind` ring solver uses this typeclass to add the relation `x ^ p - x = 0` to the
Groebner basis, which allows it to reduce high-degree polynomials. Mathlib can provide
instances for general finite fields via `FiniteField.pow_card`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df06ba54411c49d84f6ced50cd807d2544716fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
