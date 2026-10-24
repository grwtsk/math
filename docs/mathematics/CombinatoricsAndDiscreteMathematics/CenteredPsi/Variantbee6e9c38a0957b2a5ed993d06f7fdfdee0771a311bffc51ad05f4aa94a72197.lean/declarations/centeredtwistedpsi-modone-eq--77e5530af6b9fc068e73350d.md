# centeredTwistedPsi_modOne_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6641be1a9fa31031dd79bcc42fbe37aa5f030825",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b87cb9d-030b-adc0-8551-dfb7424df1ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:114ec9ba-7f07-0896-ee78-f6a7d924e227",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsi_modOne_eq",
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
  "slug": "centeredtwistedpsi-modone-eq--77e5530af6b9fc068e73350d",
  "source": {
    "blob": "6641be1a9fa31031dd79bcc42fbe37aa5f030825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CenteredPsi/Variantbee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77e5530af6b9fc068e73350de17635a2feee5504ea48536a15e2825f730bdadd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CenteredPsi/Variantbee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:114ec9ba-7f07-0896-ee78-f6a7d924e227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsi_modOne_eq
    (chi : DirichletCharacter ℂ 1) (x : ℕ) :
    centeredTwistedPsi chi x =
      (Chebyshev.psi x : ℂ) - (x : ℂ) := by
  rw [centeredTwistedPsi, twistedPsi_modOne_eq_chebyshevPsi]
  have hchi : chi = 1 := Subsingleton.elim _ _
  simp [dirichletPrincipalIndicator, principalIndicator, hchi]

end

end Surface.Core.DirichletGRH
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CenteredPsi/Variantbee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CenteredPsi/Variantbee6e9c38a0957b2a5ed993d06f7fdfdee0771a311bffc51ad05f4aa94a72197.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6641be1a9fa31031dd79bcc42fbe37aa5f030825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
