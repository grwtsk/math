# primitiveElementKeysChunk0068

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc335f821c3fb40f46cea57db09ff0a79c4de7c256e19454e9d8bfad25b0c4fc",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0068",
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
  "slug": "primitiveelementkeyschunk0068--2e27c4997383e22539caeafc",
  "source": {
    "blob": "8b5384ec085b9cd11bcafc89104678d6fee611a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4726,
    "line": 4659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e27c4997383e22539caeafc9b13c7ca2ae78a8e00da4287b07849f935951f54",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc335f821c3fb40f46cea57db09ff0a79c4de7c256e19454e9d8bfad25b0c4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4659–4726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0068 : List String :=
[
  "source-command:e5a07ac0fc55acc9d2562535ed54f1b9b9356e909010dcb7e9bd32c698f3892f",
  "source-command:e5bcc5467a625ce4a77a75ac3682aecd7e9a6bbc35f3d843f529c84403651fbd",
  "source-command:e5e3f37fb72feecf1ad635b588cc105e816e3a72846f15b1463e93d0b5f0c33e",
  "source-command:e5fc9882378c0ea41981dbee67271f1c974af4f19d477dbde8a6d9c8cc525225",
  "source-command:e616f5740e44c22568db651fcd31fff483f82d52ee5315a963603985e304ec0b",
  "source-command:e626e81be9da708b7622cb1b95856bc9c5bdadf813f213c2f2e8385077f09dca",
  "source-command:e6373b70ec3788a1432709fbec84ede52d81e0b3a87d4897282c2588c16a0cdf",
  "source-command:e675f154a73ca127584761edca73f96a6d9d03f3f96ef4186b6b8fd44ccf3caa",
  "source-command:e67637c6bce1696656c8072faca09518dfe1001470ad1d59bbae984391e4601b",
  "source-command:e6e6c122e4fcf0caffc879e6d7084a847b3a22501a44254f9351757137c9a582",
  "source-command:e6f089e1afd95e785eeac708df75ba594e1c44950effb4636f974265269bad11",
  "source-command:e709e7443ec83d5420f1e1aff67312f7d08b1774bb256336fb0dccb850ce6dda",
  "source-command:e739c0c52cdd2b3f701c2019a2d87f276c01eeff479f314608c266e2554af4ec",
  "source-command:e73a3916491919718f1cb9f0a1c8d2ecffd9d4c5979aa2891225867ee3b06005",
  "source-command:e74de36db8bd22e3593f15a72045ca8c2deb755480af57f65fea55a7a62ecbf2",
  "source-command:e771b2f013fd7284cf1203a15113e6c810fef8b241e0acd1cfdbf63fa3c3d6a0",
  "source-command:e772bc1a03cfc7c01b83b141d97f02c12f048337c20a9f8696cadb51f501b5f6",
  "source-command:e7774514667ef3ecdb394624ddc0ec7705e1314478ed2146a5fd9e4a32d0abdb",
  "source-command:e77f20cdfb4886925c105c2a2e968fdf1459f5ca2d5f66ae1876ad9fa12c3e92",
  "source-command:e79dc574e8e2f87781b93267cc073f8c073aabac037e15761811ce061649a067",
  "source-command:e7b23c9b1d27ff2c9d5cdf9697b1b4951cdf13cb56dd4fcb569eeb3849a88a5b",
  "source-command:e7bcb1a365336e8b0bc0805aab12db6cf3dd497e2acc31c724ee584cdd994e0c",
  "source-command:e80e720239fdec6276f9bb735f52fe5397cf652606b52f0d9f4a8aa9313706b7",
  "source-command:e845bb9e4bc0d79729902ba5692910d04173a52e11d068db6704c8e747c7efb5",
  "source-command:e851b91df57ba2180f3eea1232ebe858374933e6123402082b5680087a295184",
  "source-command:e8b2bc3304955ae9b7e0b4edbfd591c01173b26bb2970d30e9478df7754ad14a",
  "source-command:e8b2ef9a4186aa5ff00c083ca6b2f4d31cc9e7fcfa32f28872fdfbe4ddaf8c6f",
  "source-command:e8b534288a0488b82fd63f00644c889115c3d49451295259a74b42b773998507",
  "source-command:e8bd6361fff4ccf96f562a7fe123d9042245dbd5643042c14e96fba957253ecb",
  "source-command:e8f3778291ce76cff1fee7e770705e24ee6008d77bc355d3a0527b40d1fd6538",
  "source-command:e8ff55f6aeddaade529513d11cd5fc24a83c2df17a3e5a7f340309eb08aac371",
  "source-command:e9077cc4ceb96bffc50feef5851bdbef66c7957a3bc0a4ff244803a015f82ae4",
  "source-command:e9152fdf0e17db7b7c56b57b1cdfe1b2d36e4efcf0633023a959dd5a3842366b",
  "source-command:e95d00f63efaaef97e29bb3eb0d6ad22da4da663e432576b6d082ca1609e701d",
  "source-command:e9743842e3ccc23584feb43d46784e8a28c80e1b8b38b549d9013821a428dc24",
  "source-command:e98b5a5a419f2c6a8cd411161dcc6abb44778acf8a36b6815a3bf8f6591a47f6",
  "source-command:e9cccf9201de5f369767ae5ba2f6e5b7cbe953d5a9c9145caecd0874a50d8131",
  "source-command:e9f3ec6c4b5206d5acfb18c3d6e46d9cca568df856ef9f985851364b2b5b284f",
  "source-command:ea113274cb68481e0429154c58481446771f86cad66f38f1de0c059d2cd99478",
  "source-command:ea2375a59480512dfa28bb1f2ce55d9e34c922a6f258a4c5ce21170782d8fe7b",
  "source-command:ea23dfa8b0ffaeac1994092557d0bdcce8e8e5f092deb051cd9d93fe597416a7",
  "source-command:ea2d51802dac66a7a409468de9dcbbaff362520f07f9147328f2197613f08ee9",
  "source-command:ea3b520ff5858c287cd9f677108b52fe780727c23265b09656756ef09214da09",
  "source-command:ea6f82fe682a3d66af1af0f3a797397d0adf1e8f5fd6ad9ce862ef4b38409a91",
  "source-command:eab695c7f693e18d872ba2b79a34f840852eed98cbc744bc3ad51b48101cd908",
  "source-command:eac2b492c99e9f8dede6c502ec2ca313a5bd23672d981e7a2a4b56e576ddc986",
  "source-command:eaee0da6c77e0ef96748216214c71133c60eb260cfb9e65706e4c7f2d722e6c1",
  "source-command:eb2c0b61f184fabba0d06937946b9511cbc7064652c0ec70b1cc663b3fd40168",
  "source-command:eb302a9ef24f66ce7f96c51a82ccffb796c9efa7a11c16aeaa076ef9581156dc",
  "source-command:ebb6f5545972b506d1fd61255ed82ddd91615f486afb18e06dbe7f51506bff35",
  "source-command:ebb740ab7f75e56c0dc0d254d501492247d8889a5de4027253a0d01eba08fe96",
  "source-command:ec7b4bbca25101f69a0d70a65a87354864a678b6d31bffbd2281cf873e466977",
  "source-command:ec821c3312bc76b712a0ae49eaecb9901a7c5b8a4fb5897ff8cb5799b0c1502c",
  "source-command:ec93a901e569bac80417912c288cba84d84d080b00e865bda927ee724727d8f0",
  "source-command:ecc31ef7aec94fb678039ce74506996dfeecd2a2930d55719e9a50b537fdce90",
  "source-command:ed24211a7f0f6cc2b312e12cd5f6d830d51387f82719ff462599d61a238816f1",
  "source-command:ed24e193b9e0d489fa4f4f9b54fbccb6f0255aa94fb9eac3d3826f4848b5ac92",
  "source-command:ed31fcee19dfc571b4171340bd5c65de29b4c25a05696fa92a95910ccffbbdde",
  "source-command:ed41dbc8034bacfe5ef9f140bc588d80e781659509cd2be2695ee76caa2f4a3c",
  "source-command:ed7e14ecaf6cbb0fd90e2bb4258d2b4307fb3b658eff57fa83fb08dede905b69",
  "source-command:edd11821dabbdcd49b7bee59557f2488e9f95949dbbef3b5f701c497474994fd",
  "source-command:edd3579ba8ffd7caa45cea235abe2b6dc08d9127e8b2e5b282338a0a9b3882f7",
  "source-command:edec12e057a96b80cef9fc99a7e1e2f0d111ffe03bf8d7554120c8b9b1bc245c",
  "source-command:ee00582213a4ed98bf48a615112e3572e8e3531a6585b4bc4948513aae951fb9"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantc7045f5332c9008162d363fcb62a655eaa25315012fcd89ae9a21a56c000caf3.lean#L4659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5384ec085b9cd11bcafc89104678d6fee611a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
