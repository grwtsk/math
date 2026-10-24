# RH_Iff_H0RealZeros_importedTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66fbe242669cb4c3456e441bd1b35ec5e8e1a6610b1bc5f8db52034991757012",
  "kind": "def",
  "lexical_name": "RH_Iff_H0RealZeros_importedTheorem",
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
  "slug": "rh-iff-h0realzeros-importedtheorem--4b74e75a82440729f8ea1b12",
  "source": {
    "blob": "10f96b13752f6b7c8726769f867893fbcc33236a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H0Translation/Variant227a8af480d7af66d678771334d43a49a0060356ec44493a3174a595d1656f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b74e75a82440729f8ea1b12ccbbefb9ce84ab1675a498bdacdfc5dd44118c81",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H0Translation/Variant227a8af480d7af66d678771334d43a49a0060356ec44493a3174a595d1656f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66fbe242669cb4c3456e441bd1b35ec5e8e1a6610b1bc5f8db52034991757012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RH_Iff_H0RealZeros_importedTheorem :
    ImportedTheoremCertificate where
  declarationName := "Folder.RH.RH_Iff_H0RealZeros"
  source := "not imported: de Bruijn-Newman H0/RH equivalence remains an audited hard input"
  exactStatement := RH_Iff_H0RealZerosStatement
  dependencyStatus := "missing approved Lean import"
  status := ProofStatus.importedTheorem
  statusIsImported := rfl
  sourceLabel := "H0/RH equivalence certificate only; no proof term is supplied"

/--
Proof-carrying form of the H0/RH equivalence.

This theorem does not prove the equivalence. It requires an actual proof term
as an argument, keeping the bridge out of the final cone until that proof is
checked or imported.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H0Translation/Variant227a8af480d7af66d678771334d43a49a0060356ec44493a3174a595d1656f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/H0Translation/Variant227a8af480d7af66d678771334d43a49a0060356ec44493a3174a595d1656f26.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f96b13752f6b7c8726769f867893fbcc33236a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
