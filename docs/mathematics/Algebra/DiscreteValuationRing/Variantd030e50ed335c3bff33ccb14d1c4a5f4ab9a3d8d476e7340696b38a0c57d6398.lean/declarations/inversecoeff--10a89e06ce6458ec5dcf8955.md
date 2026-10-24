# inverseCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cac5a905b7ad1c3324c4bf126cb090b0b9bb59d394d28accf7fc27929afa0836",
  "kind": "def",
  "lexical_name": "inverseCoeff",
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
  "slug": "inversecoeff--10a89e06ce6458ec5dcf8955",
  "source": {
    "blob": "8280eb963e2b1d7ffde11cb0c0b9b28c979d0e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 63,
    "path": "GRWTSK/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10a89e06ce6458ec5dcf8955328642069a46acd87c1bca8b13452cd28a3d0320",
  "verification": {
    "reference": "docs/verification/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cac5a905b7ad1c3324c4bf126cb090b0b9bb59d394d28accf7fc27929afa0836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def inverseCoeff (a : Units k) (A : 𝕎 k) : ℕ → k
  | 0 => ↑a⁻¹
  | n + 1 => succNthValUnits n a A fun i => inverseCoeff a A i.val
#align witt_vector.inverse_coeff WittVector.inverseCoeff

/--
Upgrade a Witt vector `A` whose first entry `A.coeff 0` is a unit to be, itself, a unit in `𝕎 k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DiscreteValuationRing/Variantd030e50ed335c3bff33ccb14d1c4a5f4ab9a3d8d476e7340696b38a0c57d6398.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8280eb963e2b1d7ffde11cb0c0b9b28c979d0e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
