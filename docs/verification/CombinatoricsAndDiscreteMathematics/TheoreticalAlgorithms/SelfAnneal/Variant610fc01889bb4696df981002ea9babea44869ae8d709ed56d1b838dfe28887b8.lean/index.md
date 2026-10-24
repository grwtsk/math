# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SelfAnneal.Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99f27c049976adad0935064d753d56c6dc139595",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99f27c049976adad0935064d753d56c6dc139595`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CompilerObservationStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/compilerobservationstatus--ad6408c0464587bc33f08670.md) | 35 | `declaration-track:ad6408c0464587bc33f086708da5efd02440cf77b07706f6773e718e883385e6` |
| 2 | `structure` | [SourceAstSnapshot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/sourceastsnapshot--84e7a5ca74ae52980994837e.md) | 44 | `declaration-track:84e7a5ca74ae52980994837e8e33481a11b3fa348ff57d6e29f63f87706236de` |
| 3 | `def` | [SourceAstSnapshot.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/sourceastsnapshot-valid--057ed50566d7c0ec769e4fb4.md) | 60 | `declaration-track:057ed50566d7c0ec769e4fb473c0b1ebd3a32142fd2dbb28d0b81f80ebcdefb2` |
| 4 | `def` | [AnnealStepChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/annealstepchain--be046f14afd6199afdb3a6d0.md) | 73 | `declaration-track:be046f14afd6199afdb3a6d05f6cf8ca2a9f4d8b507e67f1fb9566c5560d6e93` |
| 5 | `structure` | [AnnealTrace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/annealtrace--3bc02056fd5a7213bca2875c.md) | 82 | `declaration-track:3bc02056fd5a7213bca2875cf0afe458db7f335e71d9dd5c56d93509236aa682` |
| 6 | `def` | [AnnealTrace.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/annealtrace-valid--ff1308ee6a7d16969620ecdd.md) | 89 | `declaration-track:ff1308ee6a7d16969620ecdde52b56148edeca67564b8d59264fe35d2a018915` |
| 7 | `inductive` | [SelfAnnealAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/selfannealauthority--befa9eaec98e19e0d2343fd1.md) | 96 | `declaration-track:befa9eaec98e19e0d2343fd1b0c47b6cb606f6c11e3a9d7ea6cd772dd025984f` |
| 8 | `structure` | [SelfAnnealCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/selfannealcertificate--a4ee2e902b517ad5cd0ccd40.md) | 101 | `declaration-track:a4ee2e902b517ad5cd0ccd4086a1347677cdc0417d241493c5e752bc89bf0b0d` |
| 9 | `theorem` | [selfAnnealCertificate_trace_valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/selfannealcertificate-trace-valid--c515fc17680da74b02c80c6a.md) | 107 | `result-track:c515fc17680da74b02c80c6ad6c2aca24a1cba21a7e3bd083030c088324bd119` |
| 10 | `theorem` | [selfAnnealCertificate_length_le_fuel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/selfannealcertificate-length-le-fuel--567d1dc5a9166f0bffd14d6c.md) | 112 | `result-track:567d1dc5a9166f0bffd14d6c73bf2098c66d2aebdde78ea12ae0e77b647f2a3a` |
| 11 | `def` | [SelfAnnealCertificate.CreatesTheoremAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/selfannealcertificate-createstheoremauthority--a68ef41e98b312adc9f8614e.md) | 117 | `declaration-track:a68ef41e98b312adc9f8614ebf02fd927f1753c526fd49bda2978bc96263d39c` |
| 12 | `theorem` | [selfAnnealCertificate_has_no_theorem_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/selfannealcertificate-has-no-theorem-authority--3946a4c0048d4ca1e93e19a7.md) | 122 | `result-track:3946a4c0048d4ca1e93e19a7c080b623f27f0a39835b896dcf888d6b0a42d36d` |
| 13 | `structure` | [SourceCodeInstrument](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/sourcecodeinstrument--9add506bbe65f00f68dc1786.md) | 129 | `declaration-track:9add506bbe65f00f68dc1786e4dd38c96767220132cf6e8e322727b4b060baf7` |
| 14 | `def` | [sourceCodeInstrument](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/sourcecodeinstrument--c1ce4aadc57f54fe23e2f12a.md) | 147 | `declaration-track:c1ce4aadc57f54fe23e2f12a2e52016c27d88b22bc852ba63b6735cdd5b4422a` |
| 15 | `theorem` | [sourceCodeInstrument_preserves_repository_revision](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/sourcecodeinstrument-preserves-repository-revision--dc41c614ab3bb84fed1fb3c3.md) | 170 | `result-track:dc41c614ab3bb84fed1fb3c3d8a5008974a8cf2b30afa7a78305f8a58e1b1b79` |
| 16 | `theorem` | [sourceCodeInstrument_preserves_source_snapshot_hash](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/declarations/sourcecodeinstrument-preserves-source-snapshot-hash--59a8b59af9a8bcd29a9552e6.md) | 177 | `result-track:59a8b59af9a8bcd29a9552e6b7061c82c7b8e7562e7aed26fb426cec621a912c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
