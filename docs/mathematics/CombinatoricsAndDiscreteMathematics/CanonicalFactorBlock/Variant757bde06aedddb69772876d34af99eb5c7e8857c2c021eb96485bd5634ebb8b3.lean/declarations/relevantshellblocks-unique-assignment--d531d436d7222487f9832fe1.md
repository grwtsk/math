# relevantShellBlocks_unique_assignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc888c36-4af1-04ce-ae45-34eb28574ac8",
  "kind": "theorem",
  "lexical_name": "relevantShellBlocks_unique_assignment",
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
  "slug": "relevantshellblocks-unique-assignment--d531d436d7222487f9832fe1",
  "source": {
    "blob": "a8568131a774a3ace406dd4653015337f5a5907d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 306,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d531d436d7222487f9832fe1db06b20a35afcb135555732d918de5503fa46776",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc888c36-4af1-04ce-ae45-34eb28574ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relevantShellBlocks_unique_assignment {N q : ℕ}
    {B C : TypeIIShellFactorBlock N q}
    {m : VaughanScaleIndex N} {k : VaughanScaleIndex N}
    (hmB : B.ContainsLeft m) (hkB : B.ContainsRight k)
    (hmC : C.ContainsLeft m) (hkC : C.ContainsRight k) :
    B = C := by
  apply TypeIIShellFactorBlock.ext
  · have hmpos : 0 < m.1 := by
      have hpow : 0 < 2 ^ B.leftExponent := by positivity
      exact hpow.trans_le hmB.2.1
    have hB := halfOpenFactorExponent_eq_of_mem hmpos
        ⟨hmB.2.1, hmB.2.2⟩
    have hC := halfOpenFactorExponent_eq_of_mem hmpos
        ⟨hmC.2.1, hmC.2.2⟩
    exact hB.symm.trans hC
  · have hkpos : 0 < k.1 := by
      have hpow : 0 < 2 ^ B.rightExponent := by positivity
      exact hpow.trans_le hkB.2.1
    have hB := halfOpenFactorExponent_eq_of_mem hkpos
        ⟨hkB.2.1, hkB.2.2⟩
    have hC := halfOpenFactorExponent_eq_of_mem hkpos
        ⟨hkC.2.1, hkC.2.2⟩
    exact hB.symm.trans hC

/-- Effective factor pairs carried by one exponent-indexed shell block. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8568131a774a3ace406dd4653015337f5a5907d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
