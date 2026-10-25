# factorPrimePowerOfSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd9089b0b4bcfe17c89aef239656b82abb0d1d25d674a4cda860ea82de4192ef",
  "kind": "def",
  "lexical_name": "factorPrimePowerOfSupport",
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
  "slug": "factorprimepowerofsupport--ebcd226359afe24fac358fc1",
  "source": {
    "blob": "31ee2d2224c2b733a3de32ca355b03aa337f8113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebcd226359afe24fac358fc1e4a72efd77fea1c9de78f120694f7f629c93093a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd9089b0b4bcfe17c89aef239656b82abb0d1d25d674a4cda860ea82de4192ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def factorPrimePowerOfSupport
    (n : PositiveNat)
    (p : Nat)
    (hp : IsPrimeSupport n p) :
    PrimePower where
  prime := p
  isPrime := factorization_support_prime n hp
  exponent := FactorizationMap n p
  exponent_pos := factorization_exponent_pos n hp

end NumberTheory
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Factorization/Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ee2d2224c2b733a3de32ca355b03aa337f8113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
