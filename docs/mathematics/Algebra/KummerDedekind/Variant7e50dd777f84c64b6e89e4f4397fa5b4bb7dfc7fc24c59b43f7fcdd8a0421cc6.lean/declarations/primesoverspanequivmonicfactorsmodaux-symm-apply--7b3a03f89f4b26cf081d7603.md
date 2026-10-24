# primesOverSpanEquivMonicFactorsModAux_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c24b9d9f29337f742582dd694483db4d722483cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82828fde-f172-6657-6bd7-c121e0d2715a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31787472-4f60-f02d-76aa-2d110b20375f",
  "kind": "theorem",
  "lexical_name": "primesOverSpanEquivMonicFactorsModAux_symm_apply",
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
  "slug": "primesoverspanequivmonicfactorsmodaux-symm-apply--7b3a03f89f4b26cf081d7603",
  "source": {
    "blob": "c24b9d9f29337f742582dd694483db4d722483cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 156,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b3a03f89f4b26cf081d76038d44dba58891714393f950cbe80f0675155202b7",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31787472-4f60-f02d-76aa-2d110b20375f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primesOverSpanEquivMonicFactorsModAux_symm_apply (A : ℤ[X]) {Q : (ZMod p)[X]}
    (hQ : Q ∈ (normalizedFactors (map (Int.castRingHom (ZMod p)) A)).toFinset) :
    ((primesOverSpanEquivMonicFactorsModAux A).symm ⟨Q, hQ⟩ : (ℤ ⧸ span {(p : ℤ)})[X]) =
      Polynomial.map ((Int.quotientSpanNatEquivZMod p).symm) Q := rfl

variable [NumberField K]

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/--
If `p` does not divide `exponent θ`, then the prime ideals above `p` in `K` are in bijection
with the monic irreducible factors of `minpoly ℤ θ` modulo `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant7e50dd777f84c64b6e89e4f4397fa5b4bb7dfc7fc24c59b43f7fcdd8a0421cc6.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24b9d9f29337f742582dd694483db4d722483cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
