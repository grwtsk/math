# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Forall.Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c18380c7045a76a295ae88e32af46b1499e3c68",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c18380c7045a76a295ae88e32af46b1499e3c68`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.AlphaShareBuilder` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Result` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkForallCongrFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/mkforallcongrfor--4980d4246760c17b377b933f.md) | 26 | `declaration-track:4980d4246760c17b377b933f38519c343dc1e7b7a5ce4f18949469c3d9781f46` |
| 2 | `structure` | [ArrowInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/arrowinfo--34c903c24be2f8b73c340098.md) | 57 | `declaration-track:34c903c24be2f8b73c3400981c080299cacf55557076683a209c1a04bcb68088` |
| 3 | `structure` | [ToArrowResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/toarrowresult--aa6a0962db844f9cf5fb3cb6.md) | 63 | `declaration-track:aa6a0962db844f9cf5fb3cb677464fb2aa0d104950bc516b7a69c8c17020394b` |
| 4 | `def` | [toArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/toarrow--8e6d6c64a30c3e690fcec2d3.md) | 68 | `declaration-track:8e6d6c64a30c3e690fcec2d30601472d54a99614ce4593909e35b39c8c59281a` |
| 5 | `def` | [toForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/toforall--735cb7507d424076b3e8ea96.md) | 78 | `declaration-track:735cb7507d424076b3e8ea9694bebcf6855a2a57549694800d6149f9c4b6ebcc` |
| 6 | `def` | [simpArrows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/simparrows--0004ce3c1ef454ad0072e5ce.md) | 96 | `declaration-track:0004ce3c1ef454ad0072e5ce7cb754eeac8e2216e3884bce414e5d17a7c8595d` |
| 7 | `def` | [simpArrowTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/simparrowtelescope--2ba81b123c554df616c2055e.md) | 171 | `declaration-track:2ba81b123c554df616c2055efbf2657472168af485ffbd526b7fbe674644d0b2` |
| 8 | `def` | [simpArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/simparrow--8a2f682367803c9f24cf9a3c.md) | 184 | `declaration-track:8a2f682367803c9f24cf9a3c0720b49371a8f6880eb62f2954e7454cb3fd4d3e` |
| 9 | `def` | [simpForall'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/simpforall--e84253ac7671db92c9775076.md) | 208 | `declaration-track:e84253ac7671db92c977507604ec12a21421d91632195a7cd25f7deed5acab6c` |
| 10 | `def` | [simpForall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant11b6d7ffcdceb516ebfc19f4216c5ee337cc46032d953c162e1c996e79ef05c7.lean/declarations/simpforall--a181b94754e7f03c85c66272.md) | 235 | `declaration-track:a181b94754e7f03c85c66272f607a7c152abb479e8430a13d320ff9405fcb5a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
