# primitiveElementKeysChunk0063

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2479b4141846823d04ebd2691970aa7ee2acfb4cbee0ef6f74e1b149d3d50edd",
  "kind": "def",
  "lexical_name": "primitiveElementKeysChunk0063",
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
  "slug": "primitiveelementkeyschunk0063--92738dfa38c56828b06d2475",
  "source": {
    "blob": "c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4384,
    "line": 4317,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92738dfa38c56828b06d247597c8414322284e2ae29bb3f22faccb4a64eca52d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2479b4141846823d04ebd2691970aa7ee2acfb4cbee0ef6f74e1b149d3d50edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4317–4384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def primitiveElementKeysChunk0063 : List String :=
[
  "source-command:bd2a1d1a7955f519dc8734e4a214657f75813f3dac14cccf4e95592138002577",
  "source-command:bd4635394eb95e37f8e34991886f6831adbd549ed62de32a9858fde776047844",
  "source-command:bd84689f1f5995f96e6686b2f5af806ef014106ded5ab4bd9f8a215bb6541792",
  "source-command:bdc14e60aa9ec47bd5db462789cd4d3f0188e8e927ecb9ba760831bd68b68438",
  "source-command:bdcdb40aa2f7c8d8501c12c3f93ac63706a7c3eb7c3cee8d76e8dad56ff7ae2c",
  "source-command:be691e21eeb222f770e4850ab774401904b02d509713438874bb5f6716205645",
  "source-command:be7e079d184080235a51e475d9e042c0edc46561f6934b41612546c545e408f2",
  "source-command:be80f153900dddc120ee1e00fd9c6ac306bac7840e7f009e53a68334f062cd95",
  "source-command:be81a47ba5dea0338f35287ce268bb2b1208dd79b2f3da5bdd7bcfb6e9d3d724",
  "source-command:be82a7cfe41b428e2fd4b0d4d82447a287a4814e59e60148be4cd31cfb0c555d",
  "source-command:bed3273408867b6abd253072433960d45cd6de7bb3e4b5611ed8d8f1f7094741",
  "source-command:bf044a31b82b712e6ecd307af8f43331144c40b3716ab379da3e224b98a0fd7b",
  "source-command:bf348e18b0a28998ea13056f657184cfe75141fad822fd51abbc5af7cdbe1c6b",
  "source-command:bf430899935d4acaf16271c3577cd33682fab0349250e43534a9f43e855d0040",
  "source-command:bf9c67c631df7a57e4fbdb9847a572b8f80934d76a454fc3bdd83d673e80ff70",
  "source-command:bfd7ac0f78877cc8efb4e185e0eb29b624175a26d5130f574c1abe35c8a39f88",
  "source-command:bfe81dd86924b2bae1da21b8bc124065f46e4ac821273da4e74249a506ce59db",
  "source-command:bff7c555714db38f9f89c3854d0252bc071ee32502ee5eee0a1c864ea42c1506",
  "source-command:bffeae88297b94d4fde084c185121bf618b0933e453b4f68344c10e7489da972",
  "source-command:c000fe0a9d08e85dffac63627ef90f474fdff0633e00113d0cb30f3f2f20f233",
  "source-command:c033dc48f76ccdafb1f6d9eccacbc57d81e4eb5f72ec87093534ac48a8011101",
  "source-command:c0615eaad8189734aa9edfb1cdf78e3f5edbeedee8c2cd9fdd551e64fa1a867f",
  "source-command:c0e48196bb3a992b89262d726ae8de7e4b26d646282d8c481e77fa1a99ecc0aa",
  "source-command:c110829887d6f81f2355607f0e1a23d7dd92649e38c828f3ef51bb2db482ab49",
  "source-command:c12df56b93db7cf4866f41ff0a1ee8fe60157a020603e05e535e0356d1462c6e",
  "source-command:c1ad58434cf6be7e239dbd9d97b2c34c7d9c822a72b6f7c555598bc8672d2721",
  "source-command:c1da8c3612c4c26fc1f7fd0e56c5c6615421dee86c79995c9b4b767da6c52e53",
  "source-command:c23b29855e0ad7440358eeb9a5b118af05a416bd0f40cc499078c4dfb4bd0643",
  "source-command:c259555887a1b79e48428666aca6da995c6ad27ee93a2b2c4987c2ec48496600",
  "source-command:c2677d01f79c01448e52b713ce1e51c4c8bcf6f33e345fec03806a64e7e6c6e2",
  "source-command:c278090c55b2f974dfb6cd0735ac29e80e379d0a7d09cd15e0ad6e353c6c93c1",
  "source-command:c2d5b89315ae29fa7a53212aebce1952a141f610645bebe190e727853d80ab1e",
  "source-command:c2f8bc56a10fe072ac13eb5d194fbef3ebaaf5b177c94a57130b2843c0b37909",
  "source-command:c369ed5a456247287fa4081c5d62ccfa18a394c737d83015a1bd6ebc65686cc0",
  "source-command:c376866430e83de15073bedf23c9a9c807a90812ac47380d65c3cb5f1289e01c",
  "source-command:c3d415b0802f2d32aa4775546aa20a4bc20f2b5446e63a7b910058220c47fb70",
  "source-command:c40db24987e24d89adf21cb7903829ef6f2becec3e2e9a0b57e15a4b0205bd27",
  "source-command:c43a0f6e8470a5e8623bc47bd640ec0b10b48f6a72b8dac6cd20b13452ad1cc1",
  "source-command:c4494e9aba43d6669428e6c6fc7852b7a2dfa168f516be9e4bb7d47d85d73697",
  "source-command:c472f0f5a016e577a9e52a8572758e664a268e384d59cf1ff7d2d48370e93ed4",
  "source-command:c476039bdcf66686fb5a4c1a8b44978056c67215f51f1259aeab18ff3f420bde",
  "source-command:c49f677adaa6ed9147415957d3683e2b26eb4a02a6304151473372f62f6f82ee",
  "source-command:c4a88c26c7a409c341d32763dc80668288f3ac9526d929ab7724742dc4bd8aad",
  "source-command:c4bb88a8a393d5fded3e40b5c7f55adbf5b2a4736fb292a99106d61ed40d48fe",
  "source-command:c4f5c2dd20ef5f2185c133ebb80dbc23a3f148a46a0eb782195bc4e61393ad32",
  "source-command:c503dedc2e293797d48fdde7bd9d6f4fe881a486be28e74691cb2dfaedb8a0d4",
  "source-command:c50685185bfa3d4f4e573ac9fbe11b740f6cb920949ed2451c41b7a41aef738b",
  "source-command:c51b98fecc61ff81ecb349b26318af5e23d1f56e7c7594f361de68c6af437b9c",
  "source-command:c5241c5482d39a85409460e5d23fe650bb562ccc658d755589d26572ab1d2316",
  "source-command:c55cb3975e4bcf3599de8a3421d8aa7bfe60e4facb4b8f7c4208cce93276d428",
  "source-command:c59c9732ca59545ab58630fc80b8ae33a389d5d74604702c95a286c8eba81e52",
  "source-command:c5d1faa2ca4b185ac0e953c9d989dbce1ba8407ef5a218f9d26ab6bc9dbedde1",
  "source-command:c60cdefaa8b866a7c10315ada79bd791af142aee3606a78026bf6ad981d78303",
  "source-command:c630e22d9e40560a637808aa0c4785290f21f8770d5eb17a9e8f9794caeaa956",
  "source-command:c6319bc5de1ce56d53caddc6adfe8e5cd32ab5e3d45e27c0978ec388ce4baec6",
  "source-command:c66856a1e998a7cceeae81905d25ce0825f13c0d5c41690fa8b38a5503901e3f",
  "source-command:c697cbdd63c01035de6f8b36db831d4abc93beff0c4855f23e4f6113884ced16",
  "source-command:c6c17d54300851539485988dc9949d05afd2aa05e02a256cdf3e430949c55485",
  "source-command:c6c53b09cfb29e93b2f3b4892bfac90a1248921023b054bf288808a4b48bf5e9",
  "source-command:c6e16a513a6f5ae933df7facd910b224768f572582de3ca3bd62722d4535c8bf",
  "source-command:c6e94191ced314260849367d555597cf375cafa7fbc24cbf5d815020f044fbb1",
  "source-command:c6ffa9c7bf5dfb5f0a093f284cab0ffc8159e295f06721d5581e4aa317408b43",
  "source-command:c7073707e49ef877333d024a7a9628ba70cb9e0cb48d15a192e679fe99a98b9c",
  "source-command:c745966fa8a64bcb00c35b3b260c84b36c90330e7771b6c0597f0a248821ec0f"
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variantb515555d9c69692c8c237e33e9639e20aef60a0c08b16b6777888038c81e752e.lean#L4317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d8c0ba416c6f1053c8aa01a3bb8d4cade0f6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
